CREATE VIEW cancoes_premium AS
SELECT 
C.nome_cancao AS `nome`,
COUNT(DISTINCT H.cancao_id) AS `reproducoes`
FROM
SpotifyClone.cancoes AS C
INNER JOIN
usuario AS U ON U.plano_id IN (2 , 3)
INNER JOIN
historico_reproducoes AS H ON C.cancao_id = H.cancao_id
AND U.usuario_id = H.usuario_id
GROUP BY `nome`
ORDER BY `nome` ASC;
