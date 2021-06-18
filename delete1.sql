delete from books_subjects where subject = (select id from subjects where name ="History");
delete from subjects where name = "History";
