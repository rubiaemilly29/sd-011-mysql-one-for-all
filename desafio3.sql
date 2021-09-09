CREATE VIEW historico_reproducao_usuarios AS
SELECT users.name AS usuario, songs.song_name AS nome
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.users_songs_history AS songHist
ON users.user_id = songHist.user_id
INNER JOIN SpotifyClone.songs AS songs
ON songs.song_id = songHist.song_id
ORDER BY usuario, nome;
