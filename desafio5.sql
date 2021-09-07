
CREATE VIEW top_2_hits_do_momento AS
SELECT M.titulo_da_musica AS 'cancao',
(SELECT COUNT(*) FROM SpotifyClone.historico_de_reproducoes AS H
WHERE H.musica_id = M.musica_id) AS reproducoes
FROM SpotifyClone.musica AS M
ORDER BY
2 DESC,
1 
LIMIT 2;
