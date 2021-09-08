CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        c.Nome AS `cancao`, COUNT(h.Cancao_ID) AS `reproducoes`
    FROM
        SpotifyClone.Cancao AS c
            INNER JOIN
        Historico_Reproducao AS h ON c.Cancao_ID = h.Cancao_ID
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC , `cancao` ASC
    LIMIT 2;
