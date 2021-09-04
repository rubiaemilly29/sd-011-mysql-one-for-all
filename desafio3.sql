CREATE VIEW `historico_reproducao_usuarios` AS
SELECT u.user_name AS `usuario`, s.song_name AS `nome` 
FROM SpotifyClone.users u
INNER JOIN
SpotifyClone.history_play h
ON u.user_id = h.user_id
INNER JOIN
SpotifyClone.songs s
ON h.song_id = s.song_id
ORDER BY `usuario`, `nome`;
