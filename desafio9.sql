DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(40))
BEGIN
select t1.artista as `artista`,
t2.album as `album`
from artista as t1
inner join album as t2
on t1.artista_id = t2.artista_id
where t1.artista = 'Walter Phoenix'
order by `album`;
END $$

DELIMITER ;
