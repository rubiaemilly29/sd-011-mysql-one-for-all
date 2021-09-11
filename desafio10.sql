DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE historico INT;
SELECT COUNT(HR.cancoes_id)
FROM SpotifyClone.historico_reproducoes HR
INNER JOIN SpotifyClone.assinantes ASS ON ASS.id_assinante = HR.id_assinante
WHERE ASS.id_assinante = id INTO historico;
RETURN historico;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
