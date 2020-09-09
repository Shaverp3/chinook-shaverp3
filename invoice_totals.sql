SELECT i.Total AS 'Invoice Total', (c.FirstName + ' ' + c.LastName) AS 'Customer Name', c.Country,
(e.FirstName + ' ' + e.LastName) AS 'Sales Agent'
from Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE e.Title like 'Sales%Agent%'
