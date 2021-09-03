DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (userName VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicsCount INT;
SELECT COUNT(ush.user_id) 
FROM SpotifyClone.users_songs_history AS ush
INNER JOIN SpotifyClone.users AS user
ON user.user_id = ush.user_id
WHERE user.name = userName
INTO musicsCount;
RETURN musicsCount;
END $$
DELIMITER ;
