DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN ARTISTA VARCHAR(50))
BEGIN
SELECT ARTISTA.artista_nome AS 'artista',
ALBUNS.album_nome AS 'album'
FROM SpotifyClone.ARTISTAS
INNER JOIN SpotifyClone.ALBUNS
ON ARTISTAS.artista_id = ALBUNS.artista
WHERE ARTISTAS.artista_nome = ARTISTA;
END $$
DELIMITER ;
