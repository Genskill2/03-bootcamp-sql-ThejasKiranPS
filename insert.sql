INSERT INTO publisher (name,country)
    VALUES ("PHI","India"),
     ("Harper","USA"),
     ("GCP","USA"),
     ("Avery","USA"),
     ("Del Rey","UK"),
     ("Vintage","UK");



INSERT INTO books (title, publisher)
    VALUES ("The C Programming Language",1),
           ("The Go Programming Language",1),
           ("The UNIX Programming Environment",1),
           ("Cryptonomicon",2),
           ("Deep Work",3),
           ("Atomic Habits",4),
           ("The City and The City",5),
           ("The Great War for Civilisation",6);


INSERT INTO subjects(name)
    VALUES ("C"),
           ("UNIX"),
           ("Technology"),
           ("Go"),
           ("Science Fiction"),
           ("Productivity"),
           ("Psychology"),
           ("Politics"),
           ("History");

INSERT INTO books_subjects(book, subject)
    VALUES (1,1),
           (1,2),
           (1,3),
           (2,4),
           (2,3),
           (3,2),
           (3,3),
           (4,3),
           (4,5),
           (5,3),
           (5,6),
           (6,6),
           (6,7),
           (7,5),
           (7,8),
           (8,8),
           (8,9);
