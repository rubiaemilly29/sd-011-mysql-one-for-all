USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS
SELECT usuario AS usuario, usuario_id AS nome
FROM usuarios AS U
INNER JOIN historico AS H
ON U.usario_id =  H.usuario_id
ORDER BY usuario, nome;
