#Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. 
#Para tal, crie uma VIEW chamada perfil_artistas, com as seguintes colunas:
#A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".
#A segunda coluna deve exibir o nome do álbum, com o alias "album".
#A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "seguidores".
#Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. 
#Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso há artistas com o mesmo nome, 
#ordene os resultados pelo nome do álbum alfabeticamente.
CREATE VIEW perfil_artistas AS
SELECT art.artista AS artista, alb.album AS album, COUNT(sa.artista_id) AS seguidores FROM SpotifyClone.Artistas AS art
INNER JOIN SpotifyClone.Albuns AS alb
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.SeguindoArtistas as sa
ON art.artista_id = sa.artista_id
GROUP BY alb.album
ORDER BY COUNT(sa.artista_id) DESC, art.artista ASC;
