DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hist_rep INT;
SELECT COUNT(*)
FROM SpotifyClone.usuario u
INNER JOIN SpotifyClone.historico h
ON u.usuario_id = h.usuario_id
WHERE u.usuario_id = user_id INTO hist_rep;
RETURN hist_rep;
END $$
DELIMITER ;

-- Outra forma:

-- DELIMITER $$ 
-- CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
-- RETURNS INT READS SQL DATA BEGIN
-- DECLARE hist_rep INT;
-- SELECT COUNT(h.usuario_id)
-- FROM SpotifyClone.historico AS h
-- WHERE h.usuario_id = user_id INTO hist_rep;
-- RETURN hist_rep;
-- END $$
-- DELIMITER ;
