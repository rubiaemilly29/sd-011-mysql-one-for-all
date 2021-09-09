CREATE VIEW historico_reproducao_usuarios AS
SELECT
user_name AS 'usuario',
song_name AS 'nome'
FROM reproduction_history AS hist
INNER JOIN users AS usuario ON usuario.user_id = hist.user_id
INNER JOIN songs AS nome ON nome.song_id = hist.song_id
ORDER BY usuario ASC, nome ASC;
