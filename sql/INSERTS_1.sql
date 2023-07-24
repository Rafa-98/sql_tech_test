-- AUTORES
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Rafael', 'Mendez', '1998-09-01', 'Autor Joven');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Alfonzo', 'Diaz', '2000-09-15', 'Autor Joven');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('David', 'Silva', '1985-05-12', 'Autor Edad media');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Jose', 'Fernandez', '1998-09-01', 'Autor Joven');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Sandra', 'Da Silva', '2000-09-15', 'Autor Joven');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Chiara', 'Caputo', '1985-05-12', 'Autor Edad media');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Anthony', 'Mendoza', '1998-09-01', 'Autor Joven');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Antonella', 'Romaniello', '2000-09-15', 'Autor Joven');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Federico', 'Marchetti', '1985-05-12', 'Autor Edad media');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Peter', 'Parker', '1998-09-01', 'Autor Joven');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Lorenzo', 'Marchetti', '2000-09-15', 'Autor Joven');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Aranguren', 'Hernandez', '1985-05-12', 'Autor Edad media');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Francis', 'Gimenez', '1998-09-01', 'Autor Joven');
INSERT INTO Autores (Nombre, Apellidos, FechaNacimiento, Descripcion) VALUES ('Leo', 'Fernandez', '2000-09-15', 'Autor Joven');

-- LIBRO ESTADOS
INSERT INTO LibrosEstado (NombreEstado) VALUES ('PUBLICADO');
INSERT INTO LibrosEstado (NombreEstado) VALUES ('NO PUBLICADO');

-- LIBROS
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Rafael', (SELECT AutorID FROM Autores WHERE Nombre = 'Rafael'), 'Editores Rafael', '2022-07-25', 25.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Rafael Parte II', (SELECT AutorID FROM Autores WHERE Nombre = 'Rafael'), 'Editores Rafael', '2016-09-25', 40.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de David', (SELECT AutorID FROM Autores WHERE Nombre = 'David'), 'Editores Anonimos', '1999-02-04', 35.50, 2, 0);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Jose', (SELECT AutorID FROM Autores WHERE Nombre = 'Jose'), 'Editores Jose', '2022-07-25', 25.55, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Jose Parte II', (SELECT AutorID FROM Autores WHERE Nombre = 'Jose'), 'Editores Jose', '2017-09-25', 43.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Sandra', (SELECT AutorID FROM Autores WHERE Nombre = 'Sandra'), 'Editores Anonimos', '2000-02-04', 15.50, 2, 0);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Chiara', (SELECT AutorID FROM Autores WHERE Nombre = 'Chiara'), 'Editores Chiara', '2022-07-25', 25.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Chiara Parte II', (SELECT AutorID FROM Autores WHERE Nombre = 'Chiara'), 'Editores Chiara', '2018-09-25', 40.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Anthony', (SELECT AutorID FROM Autores WHERE Nombre = 'Anthony'), 'Editores Anonimos', '2001-02-04', 35.50, 2, 0);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Antonella', (SELECT AutorID FROM Autores WHERE Nombre = 'Antonella'), 'Editores Antonella', '2022-07-25', 25.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Antonella Parte II', (SELECT AutorID FROM Autores WHERE Nombre = 'Antonella'), 'Editores Antonella', '2019-09-25', 40.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Federico', (SELECT AutorID FROM Autores WHERE Nombre = 'Federico'), 'Editores Anonimos', '2002-02-04', 35.50, 2, 0);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Peter', (SELECT AutorID FROM Autores WHERE Nombre = 'Peter'), 'Editores Peter', '2022-07-25', 25.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Peter Parte II', (SELECT AutorID FROM Autores WHERE Nombre = 'Peter'), 'Editores Peter', '2020-09-25', 40.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Lorenzo', (SELECT AutorID FROM Autores WHERE Nombre = 'Lorenzo'), 'Editores Anonimos', '2003-02-04', 35.50, 2, 0);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Aranguren', (SELECT AutorID FROM Autores WHERE Nombre = 'Aranguren'), 'Editores Aranguren', '2022-07-25', 25.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Aranguren Parte II', (SELECT AutorID FROM Autores WHERE Nombre = 'Aranguren'), 'Editores Aranguren', '2020-11-27', 40.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de la Luna', (SELECT AutorID FROM Autores WHERE Nombre = 'Aranguren'), 'Editores Anonimos', '2004-02-04', 35.50, 2, 0);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Francis', (SELECT AutorID FROM Autores WHERE Nombre = 'Francis'), 'Editores Francis', '2022-07-25', 25.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Francis Parte II', (SELECT AutorID FROM Autores WHERE Nombre = 'Francis'), 'Editores Francis', '2021-09-25', 40.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro del Sol', (SELECT AutorID FROM Autores WHERE Nombre = 'Francis'), 'Editores Anonimos', '2005-02-04', 35.50, 2, 0);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Leo', (SELECT AutorID FROM Autores WHERE Nombre = 'Leo'), 'Editores Leo', '2022-07-25', 25.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de Leo Parte II', (SELECT AutorID FROM Autores WHERE Nombre = 'Leo'), 'Editores Leo', '2022-09-25', 40.50, 1, 1);
INSERT INTO Libros (Titulo, AutorID, Editor, FechaEdicion, Costo, EstadoID, Vendido) VALUES ('Libro de la Tierra', (SELECT AutorID FROM Autores WHERE Nombre = 'Leo'), 'Editores Anonimos', '2007-02-04', 35.50, 2, 0);