CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(song.song_id) AS 'cancoes',
    (SELECT COUNT(artist_id) FROM SpotifyClone.artist) AS 'artistas',
    (SELECT COUNT(album_id) FROM SpotifyClone.album) AS 'albuns'
  FROM SpotifyClone.song AS song;
