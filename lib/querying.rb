def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books
  WHERE series_id = 1
  GROUP BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
  ORDER BY LENGTH(characters.motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series
  JOIN authors ON authors.id = series.author_id
  JOIN subgenres ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM characters
  INNER JOIN series ON characters.series_id = series.id
  GROUP BY series.title, species HAVING characters.species = 'human'
  ORDER BY COUNT(species) DESC
  LIMIT 1;
  "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(name) FROM character_books
  JOIN characters ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(name) DESC;"
end
