CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT m.musica AS 'cancao',
COUNT(u.usuario_id) AS 'reproducoes' 
FROM SpotifyClone.Usuario AS u
INNER JOIN SpotifyClone.Historico AS h ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.Musicas AS m ON m.musica_id = h.musica_id
GROUP BY 1
ORDER BY 2 DESC, 1 ASC
LIMIT 2;
