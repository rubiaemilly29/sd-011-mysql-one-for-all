 CREATE VIEW estatisticas_musicais AS SELECT
	(SELECT COUNT(musica_id) FROM SpotifyClone.musicas) AS `cancoes`,
	(SELECT COUNT(artista_id) FROM SpotifyClone.artistas) AS `artistas`,
	(SELECT COUNT(artista_id) FROM SpotifyClone.albums) AS `albuns`;
  