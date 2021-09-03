CREATE VIEW top_2_hits_do_momento AS
SELECT CA.Nome AS cancao, COUNT(HR.Usuario_ID) AS reproducoes
FROM SpotifyClone.Historico_De_Reproducao AS HR 
INNER JOIN SpotifyClone.Cancao AS CA
ON CA.Cancao_ID = HR.Cancao_ID
GROUP BY Cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
