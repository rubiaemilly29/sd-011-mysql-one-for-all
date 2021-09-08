DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
IN nome_artista VARCHAR(100)
)
BEGIN
SELECT a.artista AS 'artista',
al.album AS 'album'
FROM SpotifyClone.Artista AS a
INNER JOIN SpotifyClone.Albuns AS al ON a.artista_id = al.artista_id
WHERE a.artista = nome_artista
ORDER BY 2 ASC;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
