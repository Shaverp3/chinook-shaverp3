select (c.FirstName + ' ' + c.LastName) AS 'Customer Name', i.InvoiceId, i.InvoiceDate, i.BillingCountry from Invoice i
JOIN Customer c ON i.CustomerId= c.CustomerId WHERE c.Country = 'Brazil'