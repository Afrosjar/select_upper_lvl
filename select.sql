SELECT name as "Название жанра", COUNT(genre_id) as "Количество исполнителей в жанре " FROM genre g 
LEFT JOIN artistsgenres a ON g.id = a.genre_id 
GROUP BY name;

SELECT COUNT(albom_id) as "Количество треков в альбомах 2019-2020" FROM songs s 
LEFT JOIN alboms a ON s.albom_id = a.id 
WHERE "year" BETWEEN 2019 AND 2020;


SELECT avg(duration) AS "Средняя длительность треков (сек)", alboms.name AS "Название альбома"  FROM songs
LEFT JOIN alboms ON songs.albom_id = alboms.id 
GROUP BY alboms.name 
ORDER BY alboms.name asc;

SELECT DISTINCT a."name" as "Ищем артистов без альбомов в 2020" FROM artists a 
WHERE a."name" != (SELECT a."name" as "Ищем артистов с альбомами в 2020" FROM artists a 
					JOIN artistsalboms a2 ON a.id = a2.artists_id 
					JOIN alboms a3 ON a2.albom_id = a3.id 
					where year = 2020);


SELECT DISTINCT m."name" as "Ищем сборники с участием Eminem" FROM mixtape m 
JOIN mixtapesongs m2 ON m.id = m2.mixtape_id 
JOIN songs s ON m2.song_id = s.id 
JOIN alboms a ON s.albom_id = a.id 
JOIN artistsalboms a2 ON a.id = a2.albom_id 
JOIN artists a3 ON a2.artists_id = a3.id 
WHERE a3."name" = 'Eminem' ;

SELECT DISTINCT a."name" as "Альбомы с артистом разных жанров" FROM alboms a
JOIN artistsalboms a2 ON a.id  = a2.albom_id 
JOIN artists a3 ON a2.artists_id  = a3.id 
JOIN artistsgenres a4 ON a3.id  = a4.artists_id 
GROUP BY a."name" , a4.artists_id 
HAVING COUNT(a4.genre_id) >1 ;

SELECT s."name" FROM songs s 
LEFT JOIN mixtapesongs m ON s.id = m.song_id
WHERE m.song_id  IS NULL ;


SELECT a."name" as "Артист с самым короткии треком" FROM artists a 
JOIN artistsalboms a2 ON a.id = a2.artists_id 
JOIN alboms a3 ON a2.albom_id =a3.id 
JOIN songs s ON a3.id = s.albom_id  
WHERE s.duration = (select MIN(s.duration) from songs s) ;

SELECT a."name"  FROM alboms a 
JOIN songs s ON a.id = s.albom_id 
GROUP BY a."name"
HAVING COUNT(s.id) = (SELECT COUNT(s.albom_id)  
						FROM songs s 
						GROUP BY s.albom_id 
						ORDER BY COUNT(s.albom_id)
						LIMIT 1);





