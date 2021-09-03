CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT(c.titulo)) as 'cancoes',
COUNT(DISTINCT(a.artista)) as 'artistas',
COUNT(DISTINCT(al.nome)) as 'albuns'
FROM SpotifyClone.cancoes as c
INNER JOIN SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album as al ON al.artistaId = a.artistaId;
