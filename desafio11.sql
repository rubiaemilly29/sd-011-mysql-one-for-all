USE SpotifyClone;
CREATE VIEW cancoes_premium AS
    SELECT music.nome_musica AS nome, COUNT(*) AS reproducoes
    FROM usuarios AS user
        INNER JOIN 
            historico_de_reproducoes AS hr ON user.usuario_id = hr.usuario_id
        INNER JOIN
            musicas AS music ON music.musica_id = hr.musica_id
        INNER JOIN
        planos AS plans ON u.plano_id = plans.plano_id
        WHERE plans.plano IN ('Familiar', 'Universitário')
    GROUP BY `nome`
    ORDER BY `nome`;
