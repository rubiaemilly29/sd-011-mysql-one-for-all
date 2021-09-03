CREATE VIEW historico_reproducao_usuarios AS
SELECT nome AS 'usuario',
titulo AS 'nome'
FROM
SpotifyClone.usuarios AS u
INNER JOIN
SpotifyClone.historico_de_reproducoes AS hr
ON
hr.usuario_id = u.usuario_id
INNER JOIN
SpotifyClone.cancoes AS c
ON
c.cancao_id = hr.cancao_id
ORDER BY u.nome, titulo;
