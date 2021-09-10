CREATE VIEW historico_reproducao_usuarios AS
SELECT 
su.usuario,
sc.cancao AS nome
FROM SpotifyClone.usuario AS su
INNER JOIN SpotifyClone.historico_de_reproducoes AS sh
ON su.usuario_id = sh.usuario_id
INNER JOIN SpotifyClone.cancao AS sc
ON sc.cancao_id = sh.cancao_id
ORDER BY su.usuario, sc.cancao;
