CREATE TABLE Autores (
    AutorID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellidos VARCHAR (100) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Descripcion VARCHAR(150) NOT NULL
);

CREATE TABLE LibrosEstado (
    EstadoID INT IDENTITY(1,1) PRIMARY KEY,
    NombreEstado VARCHAR (100) NOT NULL,    
);

CREATE TABLE Libros (
    LibroID INT IDENTITY(1,1) PRIMARY KEY,
    Titulo VARCHAR (100) NOT NULL,
    AutorID INT NOT NULL FOREIGN KEY REFERENCES Autores(AutorID),
    Editor VARCHAR(100) NOT NULL,
    FechaEdicion DATE NOT NULL,
    Costo DECIMAL(10,2) NOT NULL,
    EstadoID INT NOT NULL FOREIGN KEY REFERENCES LibrosEstado(EstadoID),    
    Vendido BIT NOT NULL
);

CREATE TABLE HistoricoCostos (
    HistoricoCostosID INT IDENTITY(1,1) PRIMARY KEY,
    LibroID INT NOT NULL FOREIGN KEY REFERENCES Libros(LibroID),
    CostoSustituido DECIMAL(10,2) NOT NULL,
    CostoPesetas INT NOT NULL,
    FechaCambio DATE NOT NULL,    
);