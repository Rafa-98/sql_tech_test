import pypyodbc as odbc # pip install pypyodbc
import calendar
from datetime import datetime
from dateutil.relativedelta import relativedelta # pip install python-dateutil

DRIVER_NAME='SQL SERVER'
SERVER_NAME='Ricardo-pc\SQLEXPRESS'
#DATABASE_NAME='technical_test_db'
DATABASE_NAME='tests'

connection_string = f"""
    DRIVER={{{DRIVER_NAME}}};
    SERVER={SERVER_NAME};
    DATABASE={DATABASE_NAME};
    Trust_Connection=yes;
"""

# IMPORTANT: In case you need to assign user and password, add the following properties to the connection_string variable
    # uid=<user>;
    # pwd=<password>;

def insertHistoricalData(values, cursor):
    print("INFO: Inserting historial data.\n")    
    cursor.execute(f"INSERT INTO HistoricoCostos(LibroID, CostoSustituido, CostoPesetas, FechaCambio) VALUES {values};")
    cursor.commit()

def updateCosts(startDate, endDate, newCost, cursor):    
    print("INFO: Updating Costs\n")    
    cursor.execute(f"UPDATE Libros SET Costo = {newCost} OUTPUT inserted.LibroID, inserted.Costo as NewPrice WHERE FechaEdicion >= '{startDate}' AND FechaEdicion <= '{endDate}' AND Costo >= 3;")     
    
    historicalQueryValues = f""
    row = cursor.fetchone()    
    while row:        
        if(historicalQueryValues == ""):
            historicalQueryValues = historicalQueryValues + f"({row[0]}, {row[1]}, {int(row[1])}, GETDATE())"
        else:
            historicalQueryValues = historicalQueryValues + f", ({row[0]}, {row[1]}, {int(row[1])}, GETDATE())"
        row = cursor.fetchone()    
    cursor.commit()
    if(historicalQueryValues != ""):
        insertHistoricalData(historicalQueryValues, cursor)
    else:
        print("ALERT: No Data uptades and so Historical Data won't be inserted.\n")

def main():         
    conn = odbc.connect(connection_string)    
    cursor = conn.cursor()

    currentTime = datetime.now() - relativedelta(years=1)
    currentMonth = currentTime.month
    lastYear = currentTime.year

    monthDays = calendar.monthrange(lastYear, currentMonth)[1]

    initialDate = f"{lastYear}-{currentMonth}-01"
    endDate = f"{lastYear}-{currentMonth}-{monthDays}"
    
    print(f"\nINFO: Initial date es: {initialDate}, y end Date es: {endDate}\n")

    updateCosts(initialDate, endDate, 5.00, cursor)    

    print("INFO: Ending script.") 

if __name__ == "__main__":
    main()