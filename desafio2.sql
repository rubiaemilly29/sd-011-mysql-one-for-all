CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(song.title) AS cancoes,
        COUNT(DISTINCT album.artistId) AS artistas,
        COUNT(DISTINCT song.albumId) AS albuns
    FROM
        SpotifyClone.songs AS song
            INNER JOIN
        SpotifyClone.albums AS album ON song.albumId = album.albumId;
