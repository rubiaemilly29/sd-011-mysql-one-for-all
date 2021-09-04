DELIMITER $$
CREATE PROCEDURE albuns_do_artista(
IN nomeartista VARCHAR(100)
)
BEGIN
SELECT a.artista AS 'artista',
al.nome AS 'album'
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al ON al.artistaId = a.artistaId
WHERE nomeartista = a.artista
ORDER BY `artista`;
END $$
DELIMITER ;
CALL albuns_do_artista('Walter Phoenix');
