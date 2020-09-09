SELECT p.PlaylistId, p.Name AS PlayList, COUNT(pt.TrackId) AS 'Number of Tracks'
FROM Playlist p
JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
    GROUP BY p.PlaylistId, p.Name