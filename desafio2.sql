CREATE VIEW estatisticas_musicais AS (
SELECT COUNT(musics.music_id) AS cancoes,
COUNT(DISTINCT artists.artist_id) AS artistas,
COUNT(DISTINCT albums.album_id) AS albuns
FROM SpotifyClone.musics AS musics
INNER JOIN SpotifyClone.albums AS albums ON musics.album_id = albums.album_id
INNER JOIN SpotifyClone.artists AS artists ON albums.artist_id = artists.artist_id
);
