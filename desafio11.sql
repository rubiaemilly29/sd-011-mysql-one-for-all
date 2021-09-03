CREATE VIEW cancoes_premium AS
SELECT 
s.song_name as `nome`,
COUNT((select COUNT(*) FROM SpotifyClone.LISTENING_HISTORY as i WHERE i.song_id = lh.user_id)) as `reproducoes`
FROM SpotifyClone.LISTENING_HISTORY lh
INNER JOIN SpotifyClone.SONGS s ON lh.song_id = s.song_id
WHERE user_id in (
SELECT user_id FROM SpotifyClone.USERS WHERE plan_id <> 1
)
GROUP BY s.song_id
ORDER BY `nome` ASC;
