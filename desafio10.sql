Use SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE msc_qty INT;
select count(*)
FROM SpotifyClone.reproduction_history
WHERE user_id = id_usuario
INTO msc_qty;
RETURN msc_qty;
END $$
DELIMITER ;
