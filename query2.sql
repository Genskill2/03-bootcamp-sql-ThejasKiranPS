select b.title from books as b inner join publisher as p on b.publisher = p.id where p.country="UK";
