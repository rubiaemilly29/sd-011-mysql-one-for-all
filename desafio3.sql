-- Crie uma VIEW chamada historico_reproducao_usuarios. Essa VIEW deverá ter apenas duas colunas:

-- 1. A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.

-- 2. A segunda coluna deve possuir o alias "nome" e exibir o nome da canção ouvida pela pessoa com base no seu histórico de reprodução.

-- Os resultados devem estar ordenados por nome da pessoa usuária em ordem alfabética e em caso de empate no nome os resultados devem ser ordenados pelo nome da canção em ordem alfabética.

DROP VIEW historico_reproducao_usuarios;

CREATE VIEW historico_reproducao_usuarios AS 
    SELECT 
        USR.nome_usuario AS usuario,
        MUS.nome_musica AS nome
    FROM SpotifyClone.Usuario AS USR 
    INNER JOIN SpotifyClone.Historico AS HIST ON USR.usuario_id = HIST.usuario_id
    INNER JOIN SpotifyClone.Musica AS MUS ON HIST.musica_id = MUS.musica_id
    ORDER BY usuario, nome ASC;
