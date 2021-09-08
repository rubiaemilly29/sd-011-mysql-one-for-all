CREATE VIEW top_2_hits_do_momento AS
SELECT musica.nome_musica AS 'cancao',
COUNT(historico_tocadas.fk_musica_id) AS 'reproducoes'
FROM SpotifyClone.historico_tocadas AS historico_tocadas
INNER JOIN SpotifyClone.musica AS musica
ON historico_tocadas.fk_musica_id = musica.musica_id
GROUP BY historico_tocadas.fk_musica_id
ORDER BY COUNT(historico_tocadas.fk_musica_id)
DESC, musica.nome_musica
LIMIT 2;
