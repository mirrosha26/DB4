-- количество исполнителей в каждом жанре;
SELECT g.title genre, COUNT(artist_id) count_artists FROM genre_artist ga
RIGHT JOIN genre g ON g.id = ga.genre_id
GROUP BY g.title
ORDER BY count_artists DESC;

-- количество треков, вошедших в альбомы 2019-2020 годов;
SELECT COUNT(t.id) count_tracks FROM track t 
JOIN album a ON a.id = t.album_id 
WHERE year BETWEEN 2019 AND 2020

-- средняя продолжительность треков по каждому альбому;
SELECT a.title , AVG(t.length) avg_track_length  FROM album a 
JOIN track t ON a.id = t.album_id
GROUP BY a.id
ORDER BY avg_track_length DESC;

-- все исполнители, которые не выпустили альбомы в 2020 году;
SELECT art.pseudonyme  FROM album_artist aa 
JOIN artist art ON art.id = aa.artist_id 
JOIN album alb ON alb.id = aa.album_id
WHERE year <> 2020 
GROUP BY art.pseudonyme 

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT compil.name  FROM Сompilation_track as c_t 
JOIN Сompilation as compil ON c_t.compilation_id  = compil.id
JOIN track t ON t.id = c_t.track_id
JOIN album_artist aa ON aa.album_id = t.album_id 
JOIN artist a ON aa.artist_id  = a.id 
WHERE a.pseudonyme LIKE 'Eminem'
GROUP BY compil.name

-- название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a.title as name FROM album a 
JOIN album_artist aa ON a.id = aa.album_id 
JOIN genre_artist ga  ON aa.artist_id = ga.artist_id 
GROUP BY name
HAVING COUNT(ga.genre_id) > 1

-- наименование треков, которые не входят в сборники;
SELECT t.title name FROM Сompilation_track as c_t
RIGHT JOIN track t ON t.id = c_t.track_id
WHERE c_t.id IS NULL;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек 
-- (теоретически таких треков может быть несколько);
SELECT a.pseudonyme name FROM track t 
JOIN album_artist aa ON aa.album_id = t.album_id 
JOIN artist a ON a.id = aa.artist_id
WHERE t.length =  (SELECT MIN(length) FROM track)

-- название альбомов, содержащих наименьшее количество треков.
SELECT DISTINCT a.title  FROM album a
LEFT JOIN track t ON t.album_id = a.id 
WHERE t.album_id IN (
	SELECT album_id  FROM track 
	GROUP BY album_id
	HAVING COUNT(id) = (
		SELECT COUNT(id) as counter FROM track 
		GROUP BY album_id
		ORDER BY counter
		LIMIT 1
	)
)














