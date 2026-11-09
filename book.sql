create table books(
 book_id int,
 book_name varchar(254),
 genre varchar(254),
 rating decimal(2,2)
);
INSERT INTO books(
 book_id,
 book_name,
 genre,
 rating
)
values
(1, 'Harry Potter', 'Fantasy', 9.2),

(2, 'The Jungle Book', 'Adventure', 8.5),

(3, 'Sherlock Holmes', 'Mystery', 9.0),

(4, 'The Hobbit', 'Fantasy', 8.8),

(5, 'Dracula', 'Horror', 8.0),

(6, 'Diary of a Wimpy Kid', 'Comedy', 8.4),

(7, 'The Fault in Our Stars', 'Romance', 8.7),

(8, 'Percy Jackson', 'Fantasy', 9.1),

(9, 'The Alchemist', 'Adventure', 8.6),

(10, 'Matilda', 'Children', 8.9),

(11, 'The Shining', 'Horror', 8.3),

(12, 'Charlotte''s Web', 'Children', 8.2),

(13, 'The Secret Garden', 'Fiction', 8.1),

(14, 'The Hunger Games', 'Sci-Fi', 9.0),

(15, 'Charlie and the Chocolate Factory', 'Fantasy', 8.8);

select * from books;

select * from books
order by book_id ASC LIMIT 3;

select * from books
order by book_id DESC limit 3;

SELECT count(*),genre,avg(rating) as avg_rating from books
group by genre
having avg(rating)>8.00;
