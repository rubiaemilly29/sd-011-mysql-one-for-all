CREATE VIEW cancoes_premium AS
SELECT M.musica_nome AS 'nome', COUNT(H.usuario_id) AS 'reproducoes' 
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.historico AS H
ON M.musica_id = H.musica_id
INNER JOIN SpotifyClone.usuarios AS U
ON U.usuario_id = H.usuario_id
WHERE U.plano_id = 2 OR U.plano_id = 3
GROUP BY `nome`
ORDER BY `nome`;
