SELECT DISTINCT p.name
  FROM titles as t
  LEFT JOIN crew as c USING(title_id)
  LEFT JOIN people as p USING(person_id)
  WHERE t.title_id IN (
    SELECT titles.title_id
    FROM crew
    LEFT JOIN people USING(person_id)
    LEFT JOIN titles USING(title_id)
    WHERE people.name = 'Nicole Kidman')
  AND c.category IN ('actress', 'actor')
  ORDER BY p.name;