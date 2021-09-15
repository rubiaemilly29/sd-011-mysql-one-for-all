CREATE VIEW top_2_hits_do_momento AS
SELECT music.nome_musica AS cancao,
    COUNT(hr.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS music
    INNER JOIN
        SpotifyClone.historico_de_reproducoes AS hr ON music.musica_id = hr.musica_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
