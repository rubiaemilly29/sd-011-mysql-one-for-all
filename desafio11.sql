CREATE VIEW cancoes_premium AS
    SELECT music.nome_musica AS nome, COUNT(*) AS reproducoes
    FROM SpotifyClone.usuarios AS user
        INNER JOIN 
            SpotifyClone.historico_de_reproducoes AS hr ON user.usuario_id = hr.usuario_id
        INNER JOIN
            SpotifyClone.musicas AS music ON music.musica_id = hr.musica_id
        INNER JOIN
            SpotifyClone.planos AS plans ON user.plano_id = plans.plano_id
        WHERE plans.plano IN ('Familiar', 'Universitário')
    GROUP BY `nome`
    ORDER BY `nome`;
