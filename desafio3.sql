CREATE VIEW
historico_reproducao_usuarios
AS
SELECT
t1.name_user AS 'usuario',
t3.name_song AS 'nome'
FROM SpotifyClone.userSpotify AS t1
INNER JOIN SpotifyClone.musics_history AS t2
ON t1.user_id = t2.user_id
INNER JOIN SpotifyClone.songs AS t3
ON t2.song_id = t3.song_id
ORDER BY
t1.name_user,
t3.name_song;
