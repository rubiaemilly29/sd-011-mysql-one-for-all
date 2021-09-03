CREATE VIEW historico_reproducao_usuarios
AS
SELECT
u.user_name as 'usuario', 
s.song_name as 'nome'
FROM
SpotifyClone.LISTENING_HISTORY as lh
INNER JOIN SpotifyClone.SONGS as s
ON lh.song_id = s.song_id
INNER JOIN SpotifyClone.USERS as u
ON lh.user_id = u.user_id
ORDER BY u.user_name, s.song_name;
