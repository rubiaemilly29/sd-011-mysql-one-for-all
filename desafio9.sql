DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT
a.nome_artista AS 'artista',
an.nome_album AS 'album'
FROM artistas AS a
INNER JOIN albuns AS an
ON a.id_artista = an.id_artista
WHERE a.nome_artista = artista;
END $$

DELIMITER ;
