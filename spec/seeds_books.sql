--Create Test SQL seeds
--Your tests will depend on data stored in PostgreSQL to run.

--If seed data is provided (or you already created it), you can skip this step.

-- EXAMPLE
-- (file: spec/seeds_{table_name}.sql)

-- Write your SQL seed here. 

-- First, you'd need to truncate the table - this is so our table is emptied between each test run,
-- so we can start with a fresh state.
-- (RESTART IDENTITY resets the primary key)

TRUNCATE TABLE books RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO books (title, author_name) VALUES ('The Alchemist', 'Paulo Coelho');
INSERT INTO books (title, author_name) VALUES ('Shoe Dog', 'Phil Knight');
INSERT INTO books (title, author_name) VALUES ('Dear Senthuran', 'Akwaeke Emezi');
--Run this SQL file on the database to truncate (empty) the table, and insert the seed data. Be mindful of the fact any existing records in the table will be deleted.

--psql -h 127.0.0.1 your_database_name < seeds_{table_name}.sql