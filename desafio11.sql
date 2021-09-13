CREATE VIEW cancoes_premium AS
    SELECT 
        song.title AS nome, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.songs AS song
            INNER JOIN
        SpotifyClone.listeningHistory AS plays ON song.songId = plays.songId
            INNER JOIN
        SpotifyClone.users AS `user` ON plays.userId = `user`.userId
    WHERE
        `user`.planId IN (2 , 3)
    GROUP BY nome
    ORDER BY nome ASC;
