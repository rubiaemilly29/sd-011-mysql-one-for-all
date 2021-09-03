CREATE VIEW historico_reproducao_usuarios AS
SELECT users.name AS usuario, songs.name AS nome
FROM spotifyclone.users AS users
INNER JOIN spotifyclone.users_songs_history AS songHist
ON users.user_id = songHist.user_id
INNER JOIN spotifyclone.songs AS songs
ON songs.song_id = songHist.song_id
ORDER BY usuario, nome;
