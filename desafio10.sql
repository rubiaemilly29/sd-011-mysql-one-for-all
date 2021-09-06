DELIMITER //
CREATE FUNCTION quantidade_musicas_no_historico(idDoUsuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE contagem INT;
SELECT COUNT(usuario_id) FROM historico_reproducoes
WHERE idDoUsuario = usuario_id INTO contagem;
RETURN contagem;
END //
DELIMITER ;
