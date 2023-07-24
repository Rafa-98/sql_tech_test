UPDATE Libros
SET Costo = 10
OUTPUT inserted.LibroID, inserted.Costo as New_Cost
WHERE FechaEdicion >= '2012-06-01' AND FechaEdicion <= '2012-06-30' AND Costo >= 3

-- QUERY DE CREACION DEL BACKUP
INSERT INTO HistoricoCostos(LibroID, CostoSustituido, CostoPesetas, FechaCambio)
VALUES (1, 5, 5, GETDATE())