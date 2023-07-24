SELECT TOP 20 li.LibroID as LibroID, li.Titulo as Titulo, au.Nombre as Nombre, au.Apellidos as Apellido FROM LIBROS li, AUTORES au
WHERE au.AutorID = li.AutorID AND li.Costo > 12.00