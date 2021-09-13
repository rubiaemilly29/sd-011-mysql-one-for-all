DELIMITER $$;

CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(20))
SELECT a.nome AS artista, alb.nome AS album 
FROM SpotifyClone.Artistas AS a
INNER JOIN 
SpotifyClone.Albuns AS alb ON 
a.Artista_ID = alb.Artista_ID
WHERE a.nome = artista
ORDER BY album;
END $$;

DELIMITER ;
