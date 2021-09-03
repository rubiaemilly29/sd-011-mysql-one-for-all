CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT m.music_id) AS cancoes,
COUNT(DISTINCT s.singer_id) AS artistas,
COUNT(DISTINCT b.album_id) AS albuns
FROM
SpotifyClone.Music AS m,
SpotifyClone.Singer AS s,
SpotifyClone.Album AS b;
