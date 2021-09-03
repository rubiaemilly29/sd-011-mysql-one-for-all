CREATE VIEW cancoes_premium AS
SELECT m.musica_name AS 'nome', COUNT(h.musica_id) AS 'reproducoes'
FROM SpotifyClone.musicas m 
INNER JOIN SpotifyClone.historico h 
ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.usuarios u
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.planos p
ON p.plano_id = u.plano_id
WHERE p.plano_name IN ('familiar', 'universitário')
GROUP BY m.musica_name
ORDER BY m.musica_name;
