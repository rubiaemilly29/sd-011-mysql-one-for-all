CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT u.usuario AS 'usuario',
m.musica AS 'nome' 
FROM SpotifyClone.Usuario AS u
INNER JOIN SpotifyClone.Historico AS h ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.Musicas AS m ON h.musica_id = m.musica_id
ORDER BY 1 ASC, 2 ASC;
