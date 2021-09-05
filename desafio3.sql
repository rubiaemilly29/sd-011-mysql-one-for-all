CREATE VIEW historico_reproducao_usuarios AS
SELECT us.usuario AS usuario,
cc.cancao AS nome FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.historico_reproducoes AS hm
ON us.usuario_id = hm.usuario_id
INNER JOIN SpotifyClone.cancoes AS cc
ON hm.cancao_id = cc.cancao_id
ORDER BY us.usuario ASC, cc.cancao ASC;
