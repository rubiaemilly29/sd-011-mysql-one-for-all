CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.usuario AS 'usuario', m.nome_musica AS 'nome'
    FROM
        SpotifyClone.historico AS h
            INNER JOIN
        SpotifyClone.usuarios AS u ON u.usuario_id = h.usuario_id
            INNER JOIN
        musicas AS m ON m.musica_id = h.musica_id
    ORDER BY u.usuario ASC , m.nome_musica ASC;
