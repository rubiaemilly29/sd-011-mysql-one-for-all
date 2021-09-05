CREATE VIEW estatisticas_musicais AS SELECT
(SELECT COUNT(musica_id) FROM SpotifyClone.musicas) cancoes,
(SELECT COUNT(artista_id) FROM SpotifyClone.artistas) artistas,
(SELECT COUNT(album_id) FROM SpotifyClone.albums) albuns;
