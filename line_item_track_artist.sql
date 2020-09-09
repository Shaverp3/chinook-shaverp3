SELECT il.InvoiceId, ROW_NUMBER() OVER(PARTITION BY il.InvoiceId ORDER BY il.InvoiceLineId) AS 'Line item Number',
t.Name AS 'Track', a.Name AS 'Artist' 
FROM InvoiceLine il   
    INNER JOIN Track t   
        ON il.TrackId = t.TrackId
    INNER JOIN Album al ON t.AlbumId = al.AlbumId
    INNER JOIN Artist a ON a.ArtistId = al.ArtistId
ORDER BY il.InvoiceId