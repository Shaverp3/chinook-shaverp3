SELECT (e.FirstName + ' ' + e.LastName) AS 'Sales Agent', SUM(i.Total) AS 'Total Sales' From Employee e
INNER JOIN Customer c ON c.SupportRepId = e.EmployeeId
INNER JOIN Invoice i ON i.CustomerId = c.CustomerId WHERE e.Title like 'Sales%Agent%'
GROUP BY e.LastName, e.FirstName
ORDER BY e.LastName