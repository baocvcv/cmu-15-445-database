SELECT COUNT(DISTINCT title_id)
  FROM titles AS t
  WHERE t.premiered IN (
    SELECT premiered FROM titles WHERE primary_title='Army of Thieves');