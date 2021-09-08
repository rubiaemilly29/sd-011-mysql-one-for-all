CREATE VIEW cancoes_premium AS
SELECT c.titulo AS 'nome', COUNT(*) AS 'reproducoes' FROM reproducoes AS r
JOIN usuarios AS u ON u.id = r.usuario_id
JOIN cancoes AS c ON c.id = r.cancao_id
WHERE u.plano_id IN (2, 3)
GROUP BY c.id
ORDER BY c.titulo;
