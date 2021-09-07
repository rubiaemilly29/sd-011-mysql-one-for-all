CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT COUNT(m.musica) AS 'cancoes',
COUNT(DISTINCT a.artista) AS 'artistas',
COUNT(DISTINCT al.album) AS 'albuns'
FROM SpotifyClone.Musicas AS m
INNER JOIN SpotifyClone.Albuns AS al ON al.album_id = m.album_id
inner join SpotifyClone.Artista AS a ON al.artista_id = a.artista_id;
