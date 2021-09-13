CREATE VIEW historico_reproducao_usuarios AS
SELECT user.nome_usuario AS usuario, x.nome_musica AS nome
FROM SpotifyClone.usuarios AS user
    INNER JOIN
        SpotifyClone.historico_de_reproducoes AS hr ON user.usuario_id = hr.usuario_id
    INNER JOIN SpotifyClone.musicas AS x ON x.musica_id = hr.musica_id
ORDER BY `usuario`, `nome`;
