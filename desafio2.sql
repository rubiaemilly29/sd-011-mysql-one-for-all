CREATE VIEW estatisticas_musicais AS
SELECT COUNT(MUSICAS.musica_id) AS 'cancoes',
(SELECT COUNT(ARTISTAS.artista_id)
FROM SpotifyClone.ARTISTAS) AS 'artistas',
(SELECT COUNT(ALBUNS.album_id)
FROM SpotifyClone.ALBUNS) AS 'albuns'
FROM SpotifyClone.MUSICAS;
