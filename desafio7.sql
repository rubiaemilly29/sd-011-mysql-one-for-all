CREATE VIEW perfil_artistas AS
SELECT ARTISTAS.artista_nome AS 'artista',
ALBUNS.album_nome AS 'album',
(SELECT COUNT(SEGUIDORES.artista)
FROM SpotifyClone.SEGUIDORES
WHERE SEGUIDORES.artista = ARTISTAS.artista_id) AS 'seguidores'
FROM SpotifyClone.ARTISTAS
INNER JOIN SpotifyClone.ALBUNS 
ON ALBUNS.artista = ARTISTAS.artista_id
ORDER BY `seguidores` DESC, artista, album;
