SELECT p.name, COUNT(c.title_id) as napp
  FROM people as p
  INNER JOIN crew as c USING(person_id)
  GROUP BY person_id
  ORDER BY napp DESC
  LIMIT 20;