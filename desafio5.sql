CREATE VIEW top_2_hits_do_momento AS
SELECT songs.songs AS cancao,
        COUNT(reproduction_history.songs_id) AS reproducoes
FROM songs AS songs
INNER JOIN reproduction_history AS reproduction_history
ON songs.songs_id = reproduction_history.songs_id
GROUP BY songs.songs
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
