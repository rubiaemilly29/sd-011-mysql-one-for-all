CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS usuario, m.nome AS nome FROM SpotifyClone.usuarios AS u
    INNER JOIN
        SpotifyClone.historico_de_reproducoes AS hr ON hr.usuario_id = u.usuario_id
    INNER JOIN
        SpotifyClone.musicas AS m ON m.musica_id = hr.musica_id
ORDER BY usuario, nome;
