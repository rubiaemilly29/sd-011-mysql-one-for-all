CREATE VIEW cancoes_premium AS
SELECT SongName AS nome,
COUNT(his.SongID) AS reproducoes
FROM songs AS son
INNER JOIN history AS his
ON son.ID = his.SongID
GROUP BY his.SongID, nome
ORDER BY nome;
