SELECT VIEW top_2_hits_do_momento AS
SELECT 
m.musica AS cancao,COUNT(h.usuario_id) AS reproducoes     
FROM
SpotifyClone.u AS u
INNER JOIN
SpotifyClone.musicas AS m ON m.musica_id = h.musica_id
INNER JOIN
SpotifyClone.historico_reproducoes AS h ON h.usuario_id = u.usuario_id
GROUP BY 'reproducoes'
ORDER BY  'reproducoes' DESC, 1
LIMIT 2;
