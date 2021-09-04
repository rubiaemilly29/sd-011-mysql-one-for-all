#Crie uma VIEW chamada cancoes_premium que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano familiar ou universitário, 
#de acordo com os detalhes a seguir:
#A primeira coluna deve exibir o nome da canção, com o alias "nome";
#A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "reproducoes";
#Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.
USE SpotifyClone;
CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(hm.cancao_id) AS reproducoes FROM SpotifyClone.Cancoes AS c
INNER JOIN SpotifyClone.HistoricoMusicas AS hm
ON c.cancao_id = hm.cancao_id
INNER JOIN SpotifyClone.Usuarios as u
ON u.usuario_id = hm.usuario_id
WHERE u.plano_id IN(2,3)
GROUP BY c.cancao;
