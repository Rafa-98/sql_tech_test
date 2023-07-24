CREATE TABLE Aplicacion (
    IdAplicacion INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR (100) NOT NULL,        
    FechaCreacion DATE NOT NULL,
    Creador VARCHAR(100) NOT NULL
);

CREATE TABLE EstadosAplicacion (
    IdEstado INT IDENTITY(1,1) PRIMARY KEY,
    Descripcion VARCHAR (150) NOT NULL,    
);

CREATE TABLE HistoricoEstadosAplicacion (
    IdHistoricoAplicacion INT IDENTITY(1,1) PRIMARY KEY,    
    IdAplicacion INT NOT NULL FOREIGN KEY REFERENCES Aplicacion(IdAplicacion),
    IdEstado INT NOT NULL FOREIGN KEY REFERENCES EstadosAplicacion(IdEstado),        
    FechaCambio DATE NOT NULL, 
);
