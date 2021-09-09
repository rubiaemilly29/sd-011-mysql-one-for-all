CREATE VIEW estatisticas_musicais AS
SELECT COUNT(songs.song_id) AS cancoes, MAX(artists.artist_id) AS artistas, MAX(alb.album_id) AS albuns
FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.artists AS artists
ON artists.artist_id = songs.artist_id
INNER JOIN SpotifyClone.albuns AS alb
ON alb.album_id = songs.album_id;
