CREATE VIEW historico_reproducao_usuarios AS
SELECT nome AS 'usuario',
titulo AS 'nome' 
FROM SpotifyClone.historico_de_reproducao hr
INNER JOIN SpotifyClone.cancoes c 
ON hr.cancoes_id = c.cancoes_id
INNER JOIN SpotifyClone.usuarios u
ON hr.usuario_id = u.usuario_id
ORDER BY `usuario`, nome;
