CREATE VIEW top_2_hits_do_momento AS
SELECT
Musica.nome AS `cancao`,
COUNT(UsuarioMusica.musica_id) AS `reproducoes`
FROM
SpotifyClone.Musica Musica
INNER JOIN SpotifyClone.Usuario_Musica UsuarioMusica
ON Musica.musica_id = UsuarioMusica.musica_id
GROUP BY UsuarioMusica.musica_id
ORDER BY
COUNT(UsuarioMusica.musica_id) DESC,
Musica.nome
LIMIT 2;
