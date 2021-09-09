CREATE VIEW cancoes_premium AS
SELECT SongName AS nome,
COUNT(his.SongID) AS reproducoes
FROM songs AS son
INNER JOIN history AS his
ON son.ID = his.SongID
INNER JOIN users AS us
ON his.UserID = us.ID
WHERE us.PlanID IN (2, 3)
GROUP BY his.SongID, nome
ORDER BY nome;
