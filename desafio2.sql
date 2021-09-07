USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT COUNT(m.musica) AS 'cancoes',
COUNT(DISTINCT a.artista) AS 'artistas',
COUNT(DISTINCT al.album) AS 'albuns'
FROM Musicas AS m
INNER JOIN Albuns AS al ON al.album_id = m.album_id
inner join Artista AS a ON al.artista_id = a.artista_id;
