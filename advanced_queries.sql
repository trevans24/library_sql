-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * from books join authors on books.author_id = authors.id and authors.name = 'George R.R. Martin';
-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * from books join authors on books.author_id = authors.id and authors.name = 'Milan Kundera';
-- Find all books written by an author from China or the UK.
SELECT * from books join authors on authors.nationality = 'China' or authors.nationality = 'United Kingdom';
-- Find out how many books Albert Camus wrote.
SELECT COUNT(books) from authors join books on books.author_id = authors.id and authors.name = 'Albert Camus';
-- Find out how many books written before 1980 were by authors not from the US.
SELECT COUNT(books) from authors join books on books.publication_date > 1980 and authors.nationality != 'United States of America';
-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
SELECT * from authors where name like 'J%';
-- Find all books whose titles contain 'the'.
SELECT * from books where title like '%the%';