CREATE VIEW historico_reproducao_usuarios AS
SELECT U.user_name AS 'usuario',
S.song_title AS 'nome'
FROM SpotifyClone.Users U
INNER JOIN SpotifyClone.Songs_Historic SH
ON SH.user_id = U.user_id
INNER JOIN SpotifyClone.Songs S
ON S.song_id = SH.song_id
ORDER BY usuario, nome;
