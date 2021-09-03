CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        CA.Nome AS nome, US.Nome AS usuario
    FROM
        SpotifyClone.Historico_De_Reproducao AS HDR
            INNER JOIN
        SpotifyClone.Cancao AS CA ON CA.Cancao_ID = HDR.Cancao_ID
            INNER JOIN
        SpotifyClone.Usuario AS US ON US.Usuario_ID = HDR.Usuario_ID
    ORDER BY usuario , nome;
