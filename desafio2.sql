CREATE VIEW SpotifyClone.estatisticas_musicais AS
  SELECT COUNT(*) AS cancoes, MAX(artist_id) AS artistas, MAX(album_id) AS albuns FROM SpotifyClone.songs;
