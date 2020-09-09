SELECT InvoiceId, COUNT(InvoiceLineId) 'No. of line items' FROM InvoiceLine GROUP BY InvoiceId
