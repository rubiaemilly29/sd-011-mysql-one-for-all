CREATE VIEW historico_reproducao_usuarios AS SELECT
u.usuarios AS usuario,
  c.cancoes AS nome
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducao AS hr
INNER JOIN SpotifyClone.cancoes AS c
ON hr.usuario_id = u.usuario_id AND hr.cancao_id = c.cancao_id
ORDER BY usuario, nome;
