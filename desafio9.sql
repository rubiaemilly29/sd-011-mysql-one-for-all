DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
SELECT
nome as 'artista',
titulo as 'album'
FROM albums AS al
JOIN artistas AS ar ON al.artista_id = ar.id
WHERE ar.nome = nome_artista
ORDER BY al.titulo;
END $$
DELIMITER ;
