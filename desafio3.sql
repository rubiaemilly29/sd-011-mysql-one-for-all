CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name AS 'usuario', s.name AS 'nome'
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.reproduction_history AS rh
ON rh.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS s
ON s.song_id = rh.song_id
ORDER BY `usuario`, `nome`;
