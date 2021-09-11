CREATE VIEW top_2_hits_do_momento AS
SELECT M.nome_cancoes AS cancao, COUNT(HR.cancoes_id) AS reproducoes
FROM SpotifyClone.musicas M
INNER JOIN SpotifyClone.historico_reproducoes HR ON M.cancoes_id = HR.cancoes_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
