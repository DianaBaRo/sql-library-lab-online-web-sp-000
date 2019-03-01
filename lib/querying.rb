def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year
  FROM books
  JOIN series
  ON Books.series_id = Series.id
  WHERE Books.series_id = (SELECT MIN(id) FROM series)
  ORDER BY Books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name
  FROM series
  JOIN authors
  ON Series.author_id = Authors.id
  JOIN subgenres
  ON Series.subgenre_id = Subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title
  FROM characters
  JOIN series
  ON Characters.series_id = Series.id
  GROUP BY Characters.series_id
  ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(Books.series_id)
  FROM characters
  JOIN books
  ON Characters.series_id = Books.series_id
  GROUP BY Characters.name;"
end

SELECT COUNT(*) FROM cats WHERE net_worth > 1000000
