use booksbusiness;

-- 7.1. Books per author.


select a.AuthorID, a.AuthorName, count(*) books_per_author
	from Books b
	join BooksAuthors ba
		on b.IBSN = ba.IBSN
	join Authors a
		on ba.AuthorID = a.AuthorID
	group by 
		ba.AuthorID;


-- 7.2. Authors per book.

select b.IBSN, b.BookName, count(*) authors_per_book
	from Books b
	join BooksAuthors ba
		on b.IBSN = ba.IBSN
	join Authors a
		on ba.AuthorID = a.AuthorID
	group by 
		ba.IBSN;

-- 7.3. Author royalties on a book.

select a.AuthorName, a.Royalty, b.Price, b.BookName, a.Royalty * b.Price AS royalty_per_author_per_book
	from Books AS b
	join BooksAuthors AS ba
		on b.IBSN = ba.IBSN
	join Authors AS a
		on ba.AuthorID = a.AuthorID;

-- 7.4. Book royalties per author.

select a.AuthorName, a.Royalty, b.Price, b.BookName, a.Royalty * b.Price AS royalty_per_book_per_author
	from Books AS b
	join BooksAuthors AS ba
		on b.IBSN = ba.IBSN
	join Authors AS a
		on ba.AuthorID = a.AuthorID
        group by BookName;


-- 7.5. Books in a genre.

select Genre, BookName
	from Books
    group by Genre;

-- 7.6. Books published by a publisher.

select p.PublisherName, b.BookName
	from Publishers AS p
	join Books AS b
		on p.PublisherID = b.PublisherID
	group by 
		BookName;

-- 7.7. Editors per book.

select e.EditorID, b.IBSN, b.BookName, count(*) editors_per_book
	from Books b
	join BooksEditors ea
		on b.IBSN = ea.IBSN
	join Editors e
		on ea.EditorID = e.EditorID
	group by 
		ea.IBSN;

-- 7.8. Books per editor.

select e.EditorID, e.EditorName, count(*) editors_per_book
	from Books b
	join BooksEditors ea
		on b.IBSN = ea.IBSN
	join Editors e
		on ea.EditorID = e.EditorID
	group by 
		e.EditorID;

-- 7.9. Books in an order.

select o.OrderID, b.BookName, count(o.OrderID) as book_in_order
	from Orders as o
    join Books as b
		on b.IBSN = o.IBSN
    group by OrderDate;
    

-- 7.10. Orders for a book.

select o.IBSN, b.BookName, count(o.OrderID) as orders_per_book
	from Orders as o
    join Books as b
		on b.IBSN = o.IBSN
    group by IBSN;

-- 7.11. Customer orders.

select CustomerID, OrderID
	from Orders;


-- 7.12. Orders per customer

select o.CustomerID, count(o.OrderID) as books_per_customer_per_order
	from Orders as o
    join Customers as c
		on c.CustomerID = o.CustomerID
    group by OrderDate;
    
    