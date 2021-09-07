SELECT * FROM  
(SELECT COUNT(SpotifyClone.musicas.nome) AS cancoes FROM SpotifyClone.musicas) AS M
JOIN
(SELECT COUNT(SpotifyClone.artistas.nome) AS artistas FROM SpotifyClone.artistas) AS AR
JOIN
(SELECT COUNT(SpotifyClone.albuns.album) AS albuns FROM SpotifyClone.albuns) AS AL
