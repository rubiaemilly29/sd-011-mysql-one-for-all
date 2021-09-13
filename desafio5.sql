CREATE VIEW top_2_hits_do_momento AS
SELECT music.nome_musica AS cancao,
    COUNT(hist_repro.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS music
    INNER JOIN
        SpotifyClone.historico_de_reproducoes AS hist_repro ON music.musica_id = hist_repro.musica_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
