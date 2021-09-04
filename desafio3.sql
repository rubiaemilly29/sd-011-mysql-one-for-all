CREATE VIEW historico_reproducao_usuarios AS
    SELECT u.nome AS usuario, c.nome_cancao AS nome
    FROM SpotifyClone.historico_de_reproducoes hr
    INNER JOIN SpotifyClone.cancoes c ON c.cancao_id = hr.cancao_id
    INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = hr.usuario_id
    ORDER BY u.nome, c.nome_cancao;
