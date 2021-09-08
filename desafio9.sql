DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT
a.Nome AS `artista`,
    ab.Titulo AS `album`
FROM SpotifyClone.Artista AS a
INNER JOIN Album AS ab ON a.Artista_ID = ab.Artista_ID AND nome = a.Nome;
END $$

DELIMITER ;
