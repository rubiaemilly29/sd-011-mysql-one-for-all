USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(250))
BEGIN
    SELECT
AR.nome AS 'artista', 
AL.nome AS 'album' 
from SpotifyClone.album AS AL
LEFT JOIN SpotifyClone.artista AS AR
ON AL.artista_id = AR.artista_id
WHERE AR.nome = nome
ORDER BY AL.nome;
END $$
DELIMITER ;
