SELECT u.name AS 'usuario',
s.name AS 'nome'
FROM Reproduction_history rh
INNER JOIN User u
INNER JOIN Song s
ON rh.user_id = u.user_id AND rh.song_id = s.song_id
ORDER BY `usuario`, `nome`;
