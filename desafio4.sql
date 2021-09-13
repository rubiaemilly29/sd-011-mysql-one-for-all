CREATE VIEW top_3_artistas AS
    SELECT 
        CONCAT(artist.firstName, ' ', artist.lastName) AS artista,
        COUNT(*) AS seguidores
    FROM
        SpotifyClone.artists AS artist
            INNER JOIN
        SpotifyClone.followedArtists AS followers ON artist.artistId = followers.artistId
    GROUP BY artista
    ORDER BY seguidores DESC , artista ASC
    LIMIT 3;
