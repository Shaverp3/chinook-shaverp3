SELECT InvoiceId, Count(InvoiceLineId) AS 'Number of Line Items' from InvoiceLine
GROUP BY InvoiceId