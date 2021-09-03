DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT ar.artista_name AS artista, al.album_name AS album FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = ar.artista_id 
WHERE ar.artista_name LIKE CONCAT('%', nome, '%')
ORDER BY `album`;
END $$
DELIMITER ;
-- CALL albuns_do_artista('Walter Phoenix');
