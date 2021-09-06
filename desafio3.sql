CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.user_name AS 'usuario',
s.song_title AS 'nome'
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.play_history ph
ON u.user_id = ph.user_id
INNER JOIN SpotifyClone.songs s
ON ph.song_id = s.song_id
ORDER BY 1, 2;
