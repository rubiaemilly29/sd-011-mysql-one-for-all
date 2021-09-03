#Crie uma VIEW chamada historico_reproducao_usuarios. Essa VIEW deverá ter apenas duas colunas:
#A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.
#A segunda coluna deve possuir o alias "nome" e exibir o nome da canção ouvida pela pessoa com base no seu histórico de reprodução.
#Os resultados devem estar ordenados por nome da pessoa usuária em ordem alfabética e em caso de empate no nome
#os resultados devem ser ordenados pelo nome da canção em ordem alfabética.
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, c.cancao AS nome FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.HistoricoMusicas AS hm
ON u.usuario_id = hm.usuario_id
INNER JOIN SpotifyClone.Cancoes AS c
ON hm.cancao_id = c.cancao_id
ORDER BY u.usuario ASC, c.cancao ASC;
