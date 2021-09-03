CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario usuario, RP.historico_de_reproducoes nome
FROM SpotifyClone.usuarios U
INNER JOIN SpotifyClone.reproducoes RP
ON U.usuario_id = RP.usuario_id
ORDER BY usuario, nome;
