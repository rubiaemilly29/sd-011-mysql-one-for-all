DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT
a.nome_artista AS artista,
al.nome_album AS album
FROM SpotifyClone.albuns AS al
INNER JOIN SpotifyClone.artistas AS a
ON a.id_artista = al.id_artista
WHERE a.nome_artista LIKE CONCAT('%', nome, '%');
END $$
DELIMITER ;
