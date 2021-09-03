CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT
(SELECT COUNT(*) FROM SpotifyClone.songs) as 'cancoes',
(SELECT COUNT(*) FROM SpotifyClone.artists) as 'artistas',
(SELECT COUNT(*) FROM SpotifyClone.albums) as 'albuns';
