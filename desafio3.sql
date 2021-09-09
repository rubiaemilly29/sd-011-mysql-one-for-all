CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.usuario_nome AS usuario,
c.cancao_nome AS nome 
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.historico_reproducoes AS h ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON c.cancao_id = h.cancao_id
ORDER BY usuario_nome ASC, cancao_nome ASC;
