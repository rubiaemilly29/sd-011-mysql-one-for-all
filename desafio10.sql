DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico( id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_history INT;
SELECT COUNT(cancao_id) FROM SpotifyClone.usuario_cancao AS us
WHERE us.usuario_id = id
INTO qtd_history;
RETURN qtd_history;
END $$
DELIMITER ;
