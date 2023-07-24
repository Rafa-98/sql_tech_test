-- APLICACION
INSERT INTO Aplicacion (Nombre, FechaCreacion, Creador) VALUES ('Aplicacion 1', '1998-09-01', 'Rafael Mendez');
INSERT INTO Aplicacion (Nombre, FechaCreacion, Creador) VALUES ('Aplicacion 2', '1999-05-06', 'Rafael Mendez');
INSERT INTO Aplicacion (Nombre, FechaCreacion, Creador) VALUES ('Aplicacion 3', '2000-10-11', 'Rafael Mendez');

-- APLICACION ESTADOS
INSERT INTO EstadosAplicacion (Descripcion) VALUES ('ACTIVO');
INSERT INTO EstadosAplicacion (Descripcion) VALUES ('INACTIVO');

-- HISTORICO ESTADOS APLICACION
INSERT INTO HistoricoEstadosAplicacion (IdAplicacion, IdEstado, FechaCambio) VALUES (1, 1, '1998-06-25');
INSERT INTO HistoricoEstadosAplicacion (IdAplicacion, IdEstado, FechaCambio) VALUES (1, 2, '1998-06-26');
INSERT INTO HistoricoEstadosAplicacion (IdAplicacion, IdEstado, FechaCambio) VALUES (1, 1, '1998-06-27');
INSERT INTO HistoricoEstadosAplicacion (IdAplicacion, IdEstado, FechaCambio) VALUES (2, 2, '2012-06-25');
INSERT INTO HistoricoEstadosAplicacion (IdAplicacion, IdEstado, FechaCambio) VALUES (3, 1, '2018-08-15');
INSERT INTO HistoricoEstadosAplicacion (IdAplicacion, IdEstado, FechaCambio) VALUES (3, 2, '2019-01-19');