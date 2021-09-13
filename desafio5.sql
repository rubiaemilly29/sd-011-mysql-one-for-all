CREATE VIEW top_2_hits_do_momento AS
SELECT MUSICAS.musica_nome AS 'cancao',
(SELECT COUNT(HISTORICO.musica)
FROM SpotifyClone.HISTORICO
WHERE HISTORICO.musica = MUSICAS.musica_id) AS 'reproducoes'
FROM SpotifyClone.MUSICAS
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
