USE SpotifyClone;
DROP VIEW IF EXISTS estatisticas_musicais;
CREATE VIEW `estatisticas_musicais` AS
SELECT
	(SELECT COUNT(song_id) AS cancoes FROM Songs),
	(SELECT COUNT(artist_id) AS artistas FROM Artists),
	(SELECT COUNT(album_id) AS albuns FROM Albums);
