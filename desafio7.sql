CREATE VIEW perfil_artistas AS
SELECT A.nome, AL.album, SA.seguidores
FROM SpotifyClone.artistas AS A
INNER JOIN 
(SELECT id_artista, count(*) AS seguidores 
FROM SpotifyClone.tabela_seguidores_artistas 
GROUP BY 1) AS SA
ON SA.id_artista = A.id_artista
INNER JOIN albuns AS AL
ON AL.id_artista = A.id_artista
ORDER BY 3 DESC, 1 ASC, 2 ASC;
