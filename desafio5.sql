CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        song.title AS cancao, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.songs AS song
            INNER JOIN
        SpotifyClone.listeningHistory AS `history` ON song.songId = `history`.songId
    GROUP BY cancao
    ORDER BY reproducoes DESC , cancao ASC
    LIMIT 2;
