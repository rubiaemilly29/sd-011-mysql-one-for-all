#Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. 
#Crie uma VIEW chamada top_2_hits_do_momento que possua duas colunas:
#A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.
#A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão.
#Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. 
#Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.
CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao, COUNT(hm.cancao_id) AS reproducoes FROM SpotifyClone.Cancoes AS c
INNER JOIN SpotifyClone.HistoricoMusicas AS hm
ON c.cancao_id = hm.cancao_id
GROUP BY c.cancao_id
ORDER BY COUNT(hm.cancao_id) DESC, c.cancao ASC
LIMIT 2;
