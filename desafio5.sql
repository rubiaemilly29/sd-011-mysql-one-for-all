CREATE VIEW top_2_hits_do_momento AS
SELECT m.music_nome AS cancao, COUNT(*) AS 'reproducoes'
FROM SpotifyClone.musicas as m
INNER JOIN SpotifyClone.Historico AS h
ON m.musica_id = h.musica_id
group by `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC LIMIT 2; 
