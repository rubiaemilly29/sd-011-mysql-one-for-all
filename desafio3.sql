CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_nome AS usuario,
m.musica_nome AS nome
FROM spotifyclone.usuarios AS u
INNER JOIN spotifyclone.historico_reproducoes AS hr
INNER JOIN spotifyclone.musicas AS m
ON hr.usuario_id = u.usuario_id
AND hr.musica_id = m.musica_id
ORDER BY usuario, nome;
