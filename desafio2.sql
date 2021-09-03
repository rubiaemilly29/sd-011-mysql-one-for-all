CREATE VIEW estatisticas_musicais AS
SELECT 
MAX(m.musica_id) AS 'cancoes',
MAX(a.artista_id) AS 'artistas',
MAX(alb.album_id) AS 'albuns'
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.artista AS a
INNER JOIN SpotifyClone.albums AS alb;