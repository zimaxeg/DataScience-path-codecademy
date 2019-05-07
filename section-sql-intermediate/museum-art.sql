--SELECT * FROM met;
--SELECT COUNT(*) FROM met;
--SELECT DISTINCT category, COUNT(*) FROM met WHERE category LIKE '%celery%';
--SELECT MIN(date) FROM met;
--SELECT date, title, medium FROM met WHERE date LIKE '%1600%';
/*SELECT country, COUNT(*)
FROM met
WHERE country IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;*/
--SELECT category, COUNT(*) FROM met GROUP BY 1 HAVING COUNT(*) > 100;
--SELECT medium, COUNT(*) FROM met WHERE medium LIKE '%gold%' OR medium LIKE '%silver%' GROUP BY 1 ORDER BY COUNT(*) DESC;
SELECT CASE
   WHEN medium LIKE '%gold%'   THEN 'Gold'
   WHEN medium LIKE '%silver%' THEN 'Silver'
   ELSE NULL
  END AS 'Bling',
  COUNT(*)
FROM met
WHERE Bling IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;