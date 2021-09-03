CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario_nome AS usuario,
M.musica_nome AS nome
FROM spotifyclone.historico AS H
INNER JOIN spotifyclone.usuarios AS U
ON H.usuario_id = U.usuario_id
INNER JOIN spotifyclone.musicas AS M
ON H.musica_id = M.musica_id
ORDER BY usuario, nome;

SELECT * FROM historico_reproducao_usuarios;
