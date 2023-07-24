SELECT ap.Nombre, es.Descripcion, his.FechaCambio
FROM Aplicacion ap, HistoricoEstadosAplicacion his, EstadosAplicacion es 
WHERE es.IdEstado = his.IdEstado AND his.IdAplicacion = ap.IdAplicacion
ORDER BY his.IdHistoricoAplicacion DESC;