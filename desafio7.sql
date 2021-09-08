CREATE VIEW perfil_artistas AS
SELECT
ar.nome as 'artista',
al.titulo as 'album',
s.seguidores
FROM albums as al
JOIN artistas as ar on ar.id = al.artista_id
JOIN (
SELECT
COUNT(*) as 'seguidores',
artista_id
FROM seguindo_artistas
GROUP BY artista_id
) as s on s.artista_id = al.artista_id
ORDER BY seguidores DESC, ar.nome, al.titulo;
