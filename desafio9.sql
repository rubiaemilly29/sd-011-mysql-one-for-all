DELIMITER $$
create procedure albuns_do_artista(in nome_do_artista VARCHAR(50))
select
a.nome_artista as 'artista',
ab.nome_album as 'album'
from album as ab
inner join artista as a 
on ab.artista_id = a.artista_id
where a.nome_artista like nome_do_artista
order by ab.nome_album asc;
END $$
DELIMITER ;
