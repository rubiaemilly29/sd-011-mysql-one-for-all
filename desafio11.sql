CREATE VIEW cancoes_premium AS
SELECT C.Nome AS nome, COUNT(DISTINCT H.Cancao_ID) AS reproducoes FROM SpotifyClone.Cancao AS C
INNER JOIN SpotifyClone.Usuario AS U 
ON U.Plano_ID IN (2 , 3)
INNER JOIN SpotifyClone.Historico_De_Reproducao AS H 
ON C.Cancao_ID = H.Cancao_ID
AND U.Usuario_ID = H.Usuario_ID
GROUP BY nome
ORDER BY nome ASC;
