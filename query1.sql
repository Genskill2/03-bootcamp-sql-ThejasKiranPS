select b.title from books as b inner join publisher as p on p.id=b.publisher where p.name="PHI";
