--SELECT title, score FROM hacker_news ORDER BY score DESC LIMIT 5; 
--SELECT  SUM(score) FROM hacker_news;
--SELECT user, SUM(score) AS 'point' FROM hacker_news GROUP BY user HAVING point > 200;
--SELECT (517 + 309 + 304 + 282) / 6366.0;
--SELECT user, COUNT(*) FROM hacker_news WHERE url LIKE '%watch?v=dQw4w9WgXcQ%' GROUP BY user ORDER BY COUNT(*) DESC;
/*SELECT CASE 
 WHEN url LIKE '%github%' THEN 'GitHub'
 WHEN url LIKE '%medium.com%' THEN 'Medium'
 WHEN url LIKE '%nytimes.com%' THEN 'New York'
  ELSE 'Other'
 END AS 'Source',
 COUNT(*)
FROM hacker_news GROUP BY 1;*/
--SELECT timestamp FROM hacker_news LIMIT 10;
/*SELECT timestamp,
   strftime('%Y', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;*/
--SELECT AVG(score), COUNT(*), strftime('%H', timestamp) FROM hacker_news GROUP BY 3 ORDER BY 3;
SELECT ROUND(AVG(score), 0) AS 'prom', COUNT(*) AS 'count', strftime('%H', timestamp) AS 'time' FROM hacker_news WHERE time IS NOT NULL GROUP BY 3 ORDER BY 3;

 