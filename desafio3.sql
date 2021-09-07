CREATE VIEW historico_reproducao_usuarios AS
SELECT  U.nome AS 'usuario',M.titulo_da_musica AS 'nome'   
FROM SpotifyClone.historico_de_reproducoes AS H
INNER JOIN SpotifyClone.usuario AS U
ON U.usuario_id = H.usuario_id
INNER JOIN musica AS M
ON M.musica_id = H.musica_id
ORDER BY
U.nome,
M.titulo_da_musica;
