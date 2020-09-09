SELECT il.InvoiceId, ROW_NUMBER() OVER(PARTITION BY il.InvoiceId ORDER BY il.InvoiceLineId) AS 'Line item Number', t.Name
FROM InvoiceLine il   
    INNER JOIN Track t   
        ON il.TrackId = t.TrackId  
ORDER BY il.InvoiceId