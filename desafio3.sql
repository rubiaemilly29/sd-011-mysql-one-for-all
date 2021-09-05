CREATE VIEW historico_reproducao_usuarios AS
SELECT su.name AS `usuario`,
ss.name AS `nome`
FROM SpotifyClone.history_reproduction sh
INNER JOIN SpotifyClone.users su ON su.user_id = sh.user_id
INNER JOIN SpotifyClone.songs ss ON ss.song_id = sh.song_id
ORDER BY `usuario`, `nome` ASC;
