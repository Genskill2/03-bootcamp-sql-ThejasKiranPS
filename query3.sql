select b.title from books as b inner join books_subjects as bs on bs.book = b.id inner join subjects as s on bs.subject = s.id where s.name = "Politics" or s.name = "Technology";
