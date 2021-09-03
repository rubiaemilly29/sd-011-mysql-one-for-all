CREATE VIEW estatisticas_musicais AS
SELECT
    (SELECT COUNT(*) FROM Song) as 'cancoes',
    (SELECT COUNT(*) FROM Artist) as 'artistas',
    (SELECT COUNT(*) FROM Album) as 'albuns';
