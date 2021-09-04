CREATE VIEW SpotifyClone.cancoes_premium AS
    SELECT 
        mus.nome_musica AS nome, 
        COUNT(*) AS reproducoes
    FROM
        SpotifyClone.Historico AS hist
            INNER JOIN
        SpotifyClone.Musica AS mus ON hist.musica_id = mus.musica_id
            INNER JOIN
        SpotifyClone.Usuario AS usr ON hist.usuario_id = usr.usuario_id
            INNER JOIN
        SpotifyClone.Plano AS pln ON usr.plano_id = pln.plano_id
    WHERE
        pln.nome_plano IN ('familiar' , 'universitário')
    GROUP BY mus.nome_musica
    ORDER BY nome;
    