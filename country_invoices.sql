SELECT COUNT(i.InvoiceId) AS 'Number of Invoices', i.BillingCountry AS 'Country' 
FROM Invoice i   
    Group by i.BillingCountry