CREATE VIEW cancoes_premium AS
SELECT musica.nome_musica AS nome,
COUNT(historico_tocadas.fk_musica_id) AS reproducoes
FROM SpotifyClone.musica AS musica
INNER JOIN SpotifyClone.historico_tocadas AS historico_tocadas
ON musica.musica_id = historico_tocadas.fk_musica_id
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = historico_tocadas.fk_usuario_id 
AND u.plano_id IN(2,3)
GROUP BY historico_tocadas.fk_musica_id ORDER BY musica.nome_musica;
