select t1.artista as `artista`,
t2.album as `album`,
(select count(t3.artista_id)
from SpotifyClone.usuario_segue_artista as t3
where t3.artista_id = t2.artista_id
group by t3.artista_id) as `seguidores`
from SpotifyClone.artista as t1
inner join SpotifyClone.album as t2
on t1.artista_id = t2.artista_id
order by `seguidores` desc, `artista`
