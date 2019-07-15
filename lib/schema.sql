CREATE TABLE series (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author_id TEXT,
    subgenre_id INTEGER
);

CREATE TABLE subgenres (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE Authors (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    year INTEGER,
    author_id INTEGER,
    series_id INTEGER
);

CREATE TABLE characters (
    id INTEGER PRIMARY KEY,
    name TEXT,
    motto TEXT,
    species TEXT,
    author_id INTEGER,
    series_id INTEGER
);

CREATE TABLE character_books (
    id INTEGER PRIMARY KEY,
    character_id INTEGER,
    book_id INTEGER
);
