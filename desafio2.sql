USE SpotifyClone;
DROP VIEW IF EXISTS estatisticas_musicais;
CREATE VIEW `estatisticas_musicais` AS
SELECT
(SELECT COUNT(song_id) FROM Songs) AS cancoes,
(SELECT COUNT(artist_id) FROM Artists) AS artistas,
(SELECT COUNT(album_id) FROM Albums) AS albuns;
