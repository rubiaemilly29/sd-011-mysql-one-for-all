CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.usuario AS usuario,
c.nome_cancoes AS nome
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON h.cancoes_id = c.cancoes_id
ORDER BY usuario, nome;
