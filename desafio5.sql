CREATE VIEW top_2_hits_do_momento AS
    SELECT c.nome_cancao AS cancao, COUNT(hr.cancao_id) AS reproducoes
    FROM SpotifyClone.cancoes c
    INNER JOIN SpotifyClone.historico_de_reproducoes hr ON  c.cancao_id = hr.cancao_id
    GROUP BY cancao
    ORDER BY reproducoes DESC, cancao
    LIMIT 2;
