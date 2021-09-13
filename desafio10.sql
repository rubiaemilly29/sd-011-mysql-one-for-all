DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usr_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qte_musica INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM Historico_de_Reproducoes
WHERE usuario_id = usr_id INTO qte_musica;
RETURN qte_musica;
END $$
DELIMITER ;
