select Count(s.title) AS cancoes, 
Count(DISTINCT a.artistId) AS artistas, Count(DISTINCT s.albumId) AS albuns
from SpotifyClone.songs As s
INNER JOIN SpotifyClone.albums AS a
ON s.albumId = a.albumId;
