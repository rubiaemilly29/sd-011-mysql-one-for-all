CREATE VIEW historico_reproducao_usuarios AS
SELECT
Su.usuario,
Sc.cancao AS nome
FROM SpotifyClone.usuario AS Su
INNER JOIN SpotifyClone.historico_reproducao AS Sh
ON Su.usuario_id = Sh.usuario_id
INNER JOIN SpotifyClone.cancao AS Sc
ON Sc.cancao_id = Sh.cancao_id
ORDER BY Su.usuario, Sc.cancao;
