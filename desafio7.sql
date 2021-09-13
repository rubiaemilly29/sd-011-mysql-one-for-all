CREATE VIEW perfil_artistas AS
    SELECT 
        CONCAT(artist.firstName, ' ', artist.lastName) AS artista,
        record.title AS album,
        COUNT(*) AS seguidores
    FROM
        SpotifyClone.artists AS artist
            INNER JOIN
        SpotifyClone.albums AS record ON artist.artistId = record.artistId
            INNER JOIN
        SpotifyClone.followedArtists AS followers ON record.artistId = followers.artistId
    GROUP BY album , artista
    ORDER BY seguidores DESC , artista ASC , album ASC;
