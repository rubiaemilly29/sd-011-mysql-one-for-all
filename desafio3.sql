-- CREATE VIEW historico_reproducao_usuarios AS
 SELECT u.nome AS 'usuario', c.nome_cancao AS 'nome'
FROM SpotifyClone.usuario u
INNER JOIN SpotifyClone.seguindo_artistas sa ON sa.usuario_id = u.id
INNER JOIN SpotifyClone.cancoes c ON c.artista_id = sa.artista_id
ORDER BY `usuario`, `nome`;
