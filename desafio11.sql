CREATE VIEW cancoes_premium AS
SELECT musica.nome_musica AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.musica AS musica
INNER JOIN SpotifyClone.historico_tocadas AS hist
ON hist.fk_musica_id = musica.musica_id
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = hist.fk_musica_id 
AND u.plano_id IN(2,3)
GROUP BY musica.nome_musica ORDER BY musica.nome_musica;
