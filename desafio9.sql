USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (
IN nome_artista VARCHAR(50) )
BEGIN

SELECT
A.nome AS artista, 
B.nome as album
FROM Artista A 
INNER JOIN Album B ON B.id_artista = A.id
WHERE A.nome = nome_artista
ORDER BY B.nome ASC;

END $$

DELIMITER ;