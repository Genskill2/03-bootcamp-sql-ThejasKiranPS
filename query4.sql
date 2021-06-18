select s.name from subjects as s where s.id in (select bs.subject from books_subjects as bs where bs.book=(select b.id from books as b where b.title= "Atomic Habits"));
