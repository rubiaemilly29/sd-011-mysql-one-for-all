CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario AS usuario, M.nome AS nome
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico_de_reproducoes AS HR
ON U.id_usuario = HR.id_usuario
INNER JOIN SpotifyClone.musicas AS M
ON M.id_musica = HR.id_musica
ORDER BY 1 ASC, 2 ASC;
