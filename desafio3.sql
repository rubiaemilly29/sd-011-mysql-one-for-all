CREATE VIEW historico_reproducao_usuarios AS
SELECT 	u.usuario as usuario, m.music_nome AS nome FROM
SpotifyClone.Historico as h 
inner join SpotifyClone.usuarios as u
inner join SpotifyClone.musicas as m
ON h.usuario_id = u.usuario_id AND h.musica_id = m.musica_id
ORDER BY usuario, nome;
