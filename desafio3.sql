CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.usuario AS 'usuario', c.cancao AS 'nome' 
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON u.usuario_id = hr.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancao_id = hr.cancao_id
ORDER BY u.usuario, c.cancao;
