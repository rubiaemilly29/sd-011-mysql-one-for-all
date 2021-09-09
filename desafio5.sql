CREATE VIEW top_2_hits_do_momento AS
SELECT 
songs.song_name AS 'cancao',

(SELECT COUNT(*) FROM SpotifyClone.reproduction_history AS hist
WHERE songs.song_id = hist.song_id)  AS 'reproducoes'
-- O seu próximo desafio pode estar dando errado porque VOCÊ ESQUECEU DO FROM. 
FROM SpotifyClone.songs AS songs

ORDER BY reproducoes DESC, cancao ASC

LIMIT 2;
