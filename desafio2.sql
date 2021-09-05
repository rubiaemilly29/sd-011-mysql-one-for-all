CREATE VIEW estatisticas_musicais AS
SELECT COUNT(sc.song_id) AS 'cancoes',
(SELECT COUNT(sa.artist_id)
FROM SpotifyClone.artists sa) AS 'artistas',
(SELECT COUNT(sb.album_id)
FROM SpotifyClone.albuns sb) AS 'albuns'
FROM SpotifyClone.songs sc;
