USE spotifyclone;
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(songs.song_id) AS cancoes, MAX(artists.artist_id) AS artistas, MAX(alb.album_id) AS albuns
FROM spotifyclone.songs AS songs
INNER JOIN spotifyclone.artists AS artists
ON artists.artist_id = songs.artist_id
INNER JOIN spotifyclone.albuns AS alb
ON alb.album_id = songs.album_id;

SELECT * FROM estatisticas_musicais;
