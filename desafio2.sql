CREATE VIEW estatisticas_musicais AS
    SELECT
        COUNT(DISTINCT s.song_id) AS cancoes,
        COUNT(DISTINCT a.artist_id) AS artistas,
        COUNT(DISTINCT ab.album_id) AS albuns
    FROM
          SpotifyClone.songs s
            INNER JOIN
          SpotifyClone.album ab ON s.album_id = ab.album_id
            INNER JOIN
          SpotifyClone.artist a ON ab.artist_id = a.artist_id;
