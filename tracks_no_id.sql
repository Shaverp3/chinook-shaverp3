﻿SELECT t.Name AS 'Track Name', a.Title as 'Album', m.Name AS 'Media Type', g.Name AS 'Genre' FROM Track t
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
JOIN Genre g ON t.GenreId = g.GenreId
ORDER BY Album
