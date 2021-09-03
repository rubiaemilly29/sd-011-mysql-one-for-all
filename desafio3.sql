CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.user_name AS 'usuario',
s.song_name AS 'nome'
FROM user AS u
INNER JOIN user_history AS uh ON u.user_id = uh.user_id
INNER JOIN songs AS s ON uh.song_id = s.song_id
WHERE s.song_id = uh.song_id
ORDER BY u.user_name, s.song_name;
