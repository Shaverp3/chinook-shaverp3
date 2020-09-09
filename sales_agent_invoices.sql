select (e.FirstName + ' ' + e.LastName) AS 'Sales Agent', i.InvoiceId FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.FirstName, e.LastName, i.InvoiceId ORDER BY e.LastName, e.FirstName, i.InvoiceId

