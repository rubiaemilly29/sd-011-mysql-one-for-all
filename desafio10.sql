DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qty_musica INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM Historico_de_Reproducoes
GROUP BY usuario_id HAVING usuario_id = usuario_id INTO qty_musica;
RETURN qty_musica;
END $$
DELIMITER ;
