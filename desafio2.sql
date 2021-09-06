USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(*) FROM cancoes) AS 'cancoes',
(SELECT COUNT(*) FROM artistas) AS 'artistas',
(SELECT COUNT(*) FROM albuns) AS 'albuns';

-- SELECT COUNT(titulo) AS 'cancoes',
-- COUNT(DISTINCT `artista`) AS 'artistas',
-- COUNT(DISTINCT `nome`) AS 'albuns'
-- FROM SpotifyClone.cancoes c
-- INNER JOIN SpotifyClone.albuns a
-- ON c.album_id = a.album_id
-- INNER JOIN SpotifyClone.artistas ar
-- ON ar.artista_id = a.artista_id; Eu fiz esse query afim de achar a quantidade de linhas cruzando as tabelas. Porém ao cruzar tabelas, o resultado obtido é somente a contagem do que existe na table principal
