CREATE VIEW estatisticas_musicais AS
SELECT COUNT(rm.nome) AS 'cancoes',
COUNT(DISTINCT ar.nome) AS 'artistas',
COUNT(DISTINCT al.album) AS 'albuns'
FROM SpotifyClone.albuns AS al
INNER JOIN SpotifyClone.artistas AS ar ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.relacoes_musicas AS rm ON rm.album_id = al.album_id;
