DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qty_musica INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM Cancoes AS C
INNER JOIN Historico_de_Reproducoes AS HR
  ON HR.cancao_id = C.cancao_id AND HR.usuario_id = usuario_id
INTO qty_musica;
RETURN qty_musica;
END $$
DELIMITER ;
