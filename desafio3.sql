CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        song.title AS nome, `user`.`name` AS usuario
    FROM
        SpotifyClone.users AS `user`
            INNER JOIN
        SpotifyClone.listeningHistory AS `history` ON `user`.userId = `history`.userId
            INNER JOIN
        SpotifyClone.songs AS song ON song.songId = `history`.songId
    ORDER BY usuario ASC , nome ASC;
