CREATE VIEW cancoes_premium AS
SELECT songs.songs AS nome,
        COUNT(reproduction_history.songs_id) AS reproducoes
FROM songs AS songs
INNER JOIN reproduction_history AS reproduction_history
ON songs.songs_id = reproduction_history.songs_id
GROUP BY songs.songs
ORDER BY `nome`
LIMIT 8 OFFSET 2;
