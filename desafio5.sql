CREATE VIEW top_2_hits_do_momento AS SELECT M.musica AS cancao, COUNT(*) AS reproducoes FROM SpotifyClone.usuario_musica UM
INNER JOIN SpotifyClone.musicas M ON M.musica_id = UM.musica_id
GROUP BY M.musica_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
