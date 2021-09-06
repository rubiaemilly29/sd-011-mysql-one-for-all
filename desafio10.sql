DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musicas INT;
SELECT
COUNT(hist.usuario_id)
FROM SpotifyClone.historico_musicas AS hist WHERE hist.usuario_id = 
(SELECT usuario_id FROM SpotifyClone.usuarios WHERE usuario_nome = usuario)
INTO qtd_musicas;
RETURN qtd_musicas;
END $$
DELIMITER ;
