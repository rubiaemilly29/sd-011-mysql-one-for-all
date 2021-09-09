CREATE VIEW top_2_hits_do_momento AS
SELECT SongName AS cancao,
COUNT(his.SongID) AS reproducoes
FROM songs AS son
INNER JOIN history AS his
ON son.ID = his.SongID
GROUP BY his.SongID
ORDER BY reproducoes DESC, cancao
LIMIT 2;
