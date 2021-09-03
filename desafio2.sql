CREATE VIEW estatisticas_musicais AS
SELECT
  COUNT(distinct S.song_id) AS cancoes,
  COUNT(distinct AR.artist_id) AS artistas,
  COUNT(distinct AL.album_id) AS albuns
FROM
  SpotifyClone.songs AS S,
  SpotifyClone.albums AS AL,
  SpotifyClone.artists AS AR;