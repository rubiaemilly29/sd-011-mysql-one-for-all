USE SpotifyClone;
CREATE VIEW cancoes_premium AS
SELECT music.nome_musica AS nome,
    COUNT(*) AS reproducoes FROM musicas AS music
        INNER JOIN
            historico_de_reproducoes AS hr ON music.musica_id = hr.musica_id
        INNER JOIN
        usuarios AS user ON u.usuario_id = hr.usuario_id AND user.usuario_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
