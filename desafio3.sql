USE SportifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name AS 'usuario', s.name AS 'nome'
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.history_reproduction hr
ON hr.user_id = u.user_id
INNER JOIN SpotifyClone.songs s
ON s.song_id = hr.song_id
ORDER BY `usuario`, `nome`;
