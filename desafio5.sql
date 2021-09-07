CREATE VIEW top_2_hits_do_momento AS
SELECT M.nome AS cancao, COUNT(HR.id_musica) AS reproducoes
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.historico_de_reproducoes AS HR
ON M.id_musica = HR.id_musica
GROUP BY 1 ORDER BY 2 DESC, 1 ASC LIMIT 2;
