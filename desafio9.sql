DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT
A.nome_artista AS `artista`,
ALB.album_nome AS `album`
FROM SpotifyClone.artista AS A
INNER JOIN album AS ALB ON A.artista_id = ALB.artista_id AND nome = A.nome_artista;
END $$

DELIMITER ;
