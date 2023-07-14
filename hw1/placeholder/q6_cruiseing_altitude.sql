SELECT t.primary_title, r.votes
  FROM crew AS c
  LEFT JOIN people AS p USING(person_id)
  LEFT JOIN titles AS t USING(title_id)
  LEFT JOIN ratings AS r USING(title_id)
  WHERE p.name LIKE '%Cruise%'
  ORDER BY r.votes DESC
  LIMIT 10;

-- SELECT primary_title, votes
--   FROM titles
--   LEFT JOIN ratings USING(title_id)
--   WHERE title_id IN (
--     SELECT title_id
--     FROM crew
--     INNER JOIN people USING(person_id)
--     WHERE name LIKE '%Cruise%')
--   ORDER BY votes DESC
--   LIMIT 10;

