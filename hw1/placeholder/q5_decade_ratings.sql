SELECT decade || '0s', AVG(rating) AS avg, MAX(rating), MIN(rating), COUNT(*)
  FROM (
    SELECT title_id, premiered/10 AS decade
      FROM titles
      WHERE premiered IS NOT NULL)
  LEFT JOIN ratings USING(title_id)
  GROUP BY decade
  ORDER BY avg DESC, decade ASC;