-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * from authors;
-- Get just the name and birth year of all authors
SELECT name, birth_year from authors;
-- Get all authors born in the 20th centruy or later
SELECT name from authors where birth_year > 1900;
-- Get all authors born in the USA
SELECT name from authors where nationality like'%United States%';
-- Get all books published on 1985
SELECT title from books where publication_date = 1985;
-- Get all books published before 1989
SELECT title from books where publication_date < 1989;
-- Get just the title of all books.
SELECT title from books;
-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
SELECT publication_date from books where title Like '%Dance with Dragons%';
-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT title from books where title like '%the%';
-- Add yourself as an author
INSERT INTO authors values (9, 'Troy Evans', 'United States of America', 1986);
-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books values (69, 'So you want to be a developer', 2017, 9), (70, 'How to make it through WDI at GA', 2017, 9);
-- Update one of your books to have a new title
UPDATE books SET title = 'No More' WHERE title = 'So you want to be a developer';
-- Delete your books
DELETE from books where author_id = 9;
-- Delete your author entry
DELETE from authors where id = 9;