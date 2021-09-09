CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, c.cancao AS nome FROM SpotifyClone.usuario_cancao AS uc
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = uc.usuario_id
INNER JOIN SpotifyClone.cancao AS c
ON c.cancao_id = uc.cancao_id
ORDER BY usuario, nome;
