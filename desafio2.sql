create view estatisticas_musicais as
select count(t1.musica) as `cancoes`,
(select count(t2.artista) from SpotifyClone.artista as t2) as `artistas`,
(select count(t3.album) from SpotifyClone.album as t3) as `albuns`
from SpotifyClone.musica as t1
