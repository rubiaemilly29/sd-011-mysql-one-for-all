create view top_3_artistas as
select t2.artista as `artista`,
count(t1.artista_id) as `seguidores`
from SpotifyClone.usuario_segue_artista as t1
inner join SpotifyClone.artista as t2
on t1.artista_id = t2.artista_id
group by t1.artista_id
order by `seguidores` desc limit 3;
