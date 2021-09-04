CREATE VIEW historico_reproducao_usuarios AS
SELECT songs.songs AS nome,
        user_name AS usuario
FROM user AS user
INNER JOIN reproduction_history AS reproduction_history
ON reproduction_history.user_id = user.user_id
INNER JOIN songs AS songs
ON songs.songs_id = reproduction_history.songs_id
ORDER BY `usuario`, `nome`;
