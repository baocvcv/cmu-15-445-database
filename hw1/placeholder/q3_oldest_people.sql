SELECT name, (strftime('%Y', 'now') - born) AS age
  FROM people
  WHERE died IS NULL
  ORDER BY age DESC, name ASC
  LIMIT 20;