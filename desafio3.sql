CREATE  VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, c.cancao AS nome
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.cancao AS c
ON c.cancao_id = h.cancao_id
ORDER BY usuario ASC, nome ASC;
