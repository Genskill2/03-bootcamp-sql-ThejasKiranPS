CREATE TABLE publisher (
    id PRIMARY KEY NOT NULL,
    name TEXT,
    country TEXT
    );

CREATE TABLE books (
    id PRIMARY KEY NOT NULL,
    title TEXT,
    publisher INTEGER,
    FOREIGN KEY (publisher)
        REFERENCES publisher (id)
    );

CREATE TABLE subjects (
    id PRIMARY KEY NOT NULL,
    name TEXT
    );

CREATE TABLE books_subjects (
    book INTEGER,
    subject INTEGER,

    FOREIGN KEY (book)
        REFERENCES books (id)

    FOREIGN KEY (subject)
        REFERENCES subjects (id)
    );
