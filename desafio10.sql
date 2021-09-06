DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musics INT;
SELECT COUNT(hr.usuario_id)
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.usuario AS u ON hr.usuario_id = u.id
WHERE u.nome = usuario INTO total_musics;
RETURN total_musics;
END $$

DELIMITER ;
