DELIMITER $$
CREATE FUNCTION quantidade_musica_no_historico (usuario_id INTEGER)
RETURNS INTEGER READS SQL DATA
BEGIN 
DECLARE result INT;
SELECT COUNT(*)
FROM SpotifyClone.historico_tocadas AS historico_tocadas
WHERE historico_tocadas.fk_usuario_id = usuario_id
INTO result;
RETURN result;
END $$
DELIMITER ;
SELECT quantidade_musica_no_historico (3);
