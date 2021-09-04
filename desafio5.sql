-- Desafio 5
-- Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma VIEW chamada top_2_hits_do_momento que possua duas colunas:

-- 1. A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.

-- 2. A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão.

-- Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

-- DROP VIEW `top_2_hits_do_momento`;
CREATE VIEW `top_2_hits_do_momento` AS
    SELECT 
        mus.nome_musica AS `cancao`,
        COUNT(*) AS `reproducoes`
    FROM SpotifyClone.Historico AS hist 
    INNER JOIN SpotifyClone.Musica AS mus ON hist.musica_id = mus.musica_id
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC, `cancao` ASC
    LIMIT 2;
