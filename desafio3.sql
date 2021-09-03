CREATE VIEW historico_reproducao_usuarios AS
SELECT U.name AS usuario,
S.song_name AS nome
FROM users AS U
INNER JOIN historic AS H ON H.user_id = U.user_id
INNER JOIN songs AS S ON S.song_id = H.song_id
ORDER BY usuario, nome;
