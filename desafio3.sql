CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS 'usuario', msc.song_name 'nome'
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.reproduction_history AS `history`
ON `history`.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS msc
ON msc.song_id = `history`.song_id
ORDER BY u.user_name ASC, msc.song_name ASC;
