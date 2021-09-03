CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.nome AS 'usuario',
c.song AS 'nome'
FROM
SpotifyClone.Usuario AS u
INNER JOIN
SpotifyClone.Historico_De_Reproducoes AS h_d_r ON u.id = h_d_r.usuario_id
INNER JOIN
SpotifyClone.Cancoes AS c ON h_d_r.cancoes_id = c.id
ORDER BY `usuario`, `nome`;
