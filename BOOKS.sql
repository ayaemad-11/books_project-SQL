create database books
go


create table Author(
Authors_id  int  primary key  ,
firstname  varchar(100) ,
lastname   varchar(100),
birthdate    date )



create table Gener(
gener_id  int primary key   ,
genername  varchar(100)
)


create table Book (
book_id   int primary key ,
title  varchar (255),
Authors_id  int ,
gener_id  int , 
ISBN varchar(20),
foreign key (Authors_id) references authors(authors_id),
foreign key (gener_id) references geners(gener_id)
)
INSERT INTO Authors (Authors_id,firstname,lastname,birthdate) VALUES
(1,'Stephen', 'King', '1947-09-21'),
(2,'J.K.', 'Rowling', '1965-07-31'),
(3,'George', 'Orwell', '1903-06-25'),
(4,'Agatha', 'Christie', '1890-09-15'),
(5,'F. Scott', 'Fitzgerald', '1896-09-24'),
(6,'Harper', 'Lee', '1926-04-28'),
(7,'Toni', 'Morrison', '1931-02-18'),
(8,'J.R.R.', 'Tolkien', '1892-01-03'),
(9,'Margaret', 'Atwood', '1939-11-18'),
(10,'Neil', 'Gaiman', '1960-11-10'),
(11,'Chimamanda', 'Ngozi Adichie', '1977-09-15'),
(12,'Mark', 'Haddon', '1962-09-26'),
(13,'John', 'Green', '1977-08-24'),
(14,'Ray', 'Bradbury', '1920-08-22'),
(15,'Isaac', 'Asimov', '1920-01-02'),
(16,'Kurt', 'Vonnegut', '1922-11-11'),
(17,'Zadie', 'Smith', '1975-10-25'),
(18,'Dante', 'Alighieri', '1265-06-01'),
(19,'Leo', 'Tolstoy', '1828-09-09'),
(20,'Virginia', 'Woolf', '1882-01-25'),
(21,'Malcolm', 'Gladwell', '1963-09-13'),
(22,'Daphne', 'Du Maurier', '1907-04-13'),
(23,'Gillian', 'Flynn', '1971-02-24'),
(24,'Colson', 'Whitehead', '1969-11-06'),
(25,'Richard', 'Powers', '1957-06-18'),
(26,'Mitch', 'Albom', '1958-11-23'),
(27,'Dan', 'Brown', '1964-06-22'),
(28,'Barbara', 'Kingsolver', '1955-04-08'),
(29,'Sara', 'Gruen', '1971-07-10'),
(30,'Ruth', 'Ozeki', '1956-03-12');

INSERT INTO  Geners(gener_id,genername)
VALUES 
(1,'Horror'),
(2,'Fantasy'),
(3,'Dystopian'),
(4,'Mystery'),
(5,'Classic'),
(6,'Historical Fiction'),
(7,'Science Fiction'),
(8,'Literary Fiction'),
(9,'Romance'),
(10,'Young Adult');

INSERT INTO Books (book_id,Title, Authors_id, gener_id, ISBN) VALUES
(1,'The Shining', 1, 1, '978-0307743654'),
(2,'Harry Potter and the Sorcerer Stone', 2, 2, '978-0590353427'),
(3,'1984', 3, 3, '978-0451524935'),
(4,'Murder on the Orient Express', 4, 4, '978-0062693662'),
(5,'The Great Gatsby', 5, 5, '978-0743273565'),
(6,'To Kill a Mockingbird', 6, 5, '978-0061120084'),
(7,'Beloved', 7, 5, '978-1400033416'),
(8,'The Hobbit', 8, 2, '978-0547928227'),
(9,'The Handmaid Tale', 9, 3, '978-0385490818'),
(10,'American Gods', 10, 2, '978-0062572234'),
(11,'Half of a Yellow Sun', 11, 5, '978-1400075641'),
(12,'The Curious Incident of the Dog in the Night-Time', 12, 5, '978-1400032716'),
(13,'The Fault in Our Stars', 13, 3, '978-0525478812'),
(14,'Fahrenheit 451', 14, 3, '978-1451673319'),
(15,'Slaughterhouse-Five', 15, 3, '978-0440180296'),
(16,'The Road', 16, 1, '978-0307387899'),
(17,'White Teeth', 17, 5, '978-0375703867'),
(18,'Norwegian Wood', 18, 2, '978-0099448822'),
(19,'The Night Circus', 19, 2, '978-0307744432'),
(20,'The Catcher in the Rye', 20, 5, '978-0316769488'),
(21,'Brave New World', 3, 3, '978-0060850524'),
(22,'The Great Alone', 11, 5, '978-0316341664'),
(23,'The Secret History', 12, 5, '978-0679734772'),
(24,'The Underground Railroad', 13, 5, '978-0345544957'),
(25,'A Man Called Ove', 14, 5, '978-1476738024'),
(26,'Little Fires Everywhere', 15, 5, '978-1101875684'),
(27,'The Silent Patient', 16, 5, '978-1250301697'),
(28,'The Immortalists', 17, 5, '978-0735213180'),
(29,'Anxious People', 18, 5, '978-1982131439'),
(30,'The Invisible Man', 19, 3, '978-0451530906'),
(31,'The Picture of Dorian Gray', 20, 5, '978-0141439570');


create table sales (
sales_id  int primary key ,
book_id  int ,
sales_date  date ,
sales_amount  dec(10,2),
foreign key (book_id) references  books(book_id)
)

insert into sales(sales_id,book_id,sales_date,sales_amount)values
(1,1,'2024-01-10',400.00),
(2, 2, '2024-01-11',  1000.00),
(3, 3, '2024-01-12',  600.00),
(4, 4, '2024-01-13',  500.00),
(5, 5, '2024-01-14',  300.00),
(6, 6, '2024-01-15',  200.00),
(7, 7, '2024-01-16',  1000.00),
(8, 8, '2024-01-17',  600.00),
(9, 9, '2024-01-18',  500.00),
(10, 10, '2024-01-19', 300.00),
(11, 11, '2024-01-20',  200.00),
(12, 12, '2024-01-21',  1000.00),
(13,13, '2024-01-22',  600.00),
(14, 14, '2024-01-23', 500.00),
(15, 15, '2024-01-24',  300.00),
(16, 16, '2024-01-25', 200.00),
(17, 17, '2024-01-26', 1000.00),
(18, 18, '2024-01-27',  600.00),
(19, 19, '2024-01-28',  500.00),
(20, 20, '2024-01-29',  300.00),
(21, 21, '2024-01-30',  200.00),
(22, 22, '2024-02-01',  1000.00),
(23, 23, '2024-02-02', 600.00),
(24, 24, '2024-02-03',  500.00),
(25, 25, '2024-02-04',  300.00),
(26, 26, '2024-02-05', 200.00),
(27, 27, '2024-02-06',  1000.00),
(28, 28, '2024-02-07', 600.00),
(29, 29, '2024-02-08',  500.00),
(30, 30, '2024-02-09',  300.00)





create table Rating (
rating_id  int  primary key ,
book_id  int,
Rating  int   check  (rating between 1 and 5),
rating_date   date ,
foreign key (book_id) references books(book_id)
)



insert into Rating(rating_id,book_id,Rating,rating_date) values 
(1, 1, 5, '2024-01-16'),
(2, 2, 5, '2024-01-17'),
(3, 3, 4, '2024-01-18'),
(4, 4, 4, '2024-01-19'),
(5, 5, 5, '2024-01-20'),
(6, 6, 5, '2024-01-21'),
(7, 7, 3, '2024-01-22'),
(8, 8, 5, '2024-01-23'),
(9, 9, 4, '2024-01-24'),
(10, 10, 4, '2024-01-25'),
(11, 11, 5, '2024-01-26'),
(12, 12, 5, '2024-01-27'),
(13, 13, 5, '2024-01-28'),
(14, 14, 5, '2024-01-29'),
(15, 15, 4, '2024-01-30'),
(16, 16, 4, '2024-02-01'),
(17, 17, 5, '2024-02-02'),
(18, 18, 5, '2024-02-03'),
(19, 19, 5, '2024-02-04'),
(20, 20, 5, '2024-02-05'),
(21, 21, 4, '2024-02-06'),
(22, 22, 4, '2024-02-07'),
(23, 23, 5, '2024-02-08'),
(24, 24, 5, '2024-02-09'),
(25, 25, 5, '2024-02-10'),
(26, 26, 5, '2024-02-11'),
(28, 27, 4, '2024-02-12'),
(29, 29, 4, '2024-02-13'),
(30, 30, 5, '2024-02-14')


create table review (
review_id  int  primary key ,
book_id  int ,
review_text  varchar(20) ,
review_name  varchar(20),
review_date  date 
foreign key (book_id) references books(book_id)
)


INSERT INTO review (review_id, book_id, review_text, review_name, review_date) VALUES
(1, 1, 'Intense', 'Alice', '2024-01-15'),
(2, 2, 'Magical', 'Bob', '2024-01-16'),
(3, 3, 'Chilling', 'Charlie', '2024-01-17'),
(4, 4, 'Masterful', 'Diana', '2024-01-18'),
(5, 5, 'Poignant', 'Edward', '2024-01-19'),
(6, 6, 'Heartbreaking', 'Fiona', '2024-01-20'),
(7, 7, 'Powerful', 'George', '2024-01-21'),
(8, 8, 'Enchanting', 'Hannah', '2024-01-22'),
(9, 9, 'Disturbing', 'Ian', '2024-01-23'),
(10, 10, 'Imaginative', 'Jessica', '2024-01-24'),
(11, 11, 'Gripping', 'Kevin', '2024-01-25'),
(12, 12, 'Clever', 'Laura', '2024-01-26'),
(13, 13, 'Beautiful', 'Mike', '2024-01-27'),
(14, 14, 'Haunting', 'Nina', '2024-01-28'),
(15, 15, 'Absurd', 'Owen', '2024-01-29'),
(16, 16, 'Stark', 'Paula', '2024-01-30'),
(17, 17, 'Vibrant', 'Quinn', '2024-01-31'),
(18, 18, 'Lyrical', 'Rachel', '2024-02-01'),
(19, 19, 'Mesmerizing', 'Sam', '2024-02-02'),
(20, 20, 'Raw', 'Tina', '2024-02-03'),
(21, 21, 'Provocative', 'Ursula', '2024-02-04'),
(22, 22, 'Engaging', 'Victor', '2024-02-05'),
(23, 23, 'Compelling', 'Wendy', '2024-02-06'),
(24, 24, 'Poignant', 'Xander', '2024-02-07'),
(25, 25, 'Heartfelt', 'Yara', '2024-02-08'),
(26, 26, 'Immersive', 'Zach', '2024-02-09'),
(27, 27, 'Thought-provoking', 'Amy', '2024-02-10'),
(28, 28, 'Captivating', 'Ben', '2024-02-11'),
(29, 29, 'Humorous', 'Clara', '2024-02-12'),
(30, 30, 'Classic', 'Daniel', '2024-02-13');


select  CONCAT(firstname ,' ',   lastname)as fullname 
  from Authors 

select book_id, price* salescount  as revenue  from books


select  books.Authors_id ,books.price*books.SalesCount as revenue  
from books
join Authors on books.Authors_id=Authors.Authors_id


select
top 5 
Authors.Authors_id,  concat(authors.firstname ,' ', lastname)as fullname, Books.price*Books.SalesCount as revenue ,
ROW_NUMBER()over(order by Books.price*Books.SalesCount desc) as rank 
from Books 
join Authors  on Books.Authors_id=Authors.Authors_id
order by revenue    desc  
 
select  top 5 
Books.gener_id , Books.Authors_id,Authors.Authors_id, concat(authors.firstname ,' ', lastname)as fullname, Books.price*Books.SalesCount as revenue ,
ROW_NUMBER()over(order by Books.price*Books.SalesCount desc) as rank 
from Books 
join Geners on Books.Authors_id=Geners.gener_id
order by revenue desc  

select Books.gener_id, books.Authors_id ,books.price*books.SalesCount as revenue  
from books


SELECT TOP 5 
    Books.gener_id, 
    Authors.Authors_id, 
    CONCAT(Authors.firstname, ' ', Authors.lastname) AS fullname, 
    Books.price * Books.SalesCount AS revenue,
    ROW_NUMBER() OVER (ORDER BY Books.price * Books.SalesCount DESC) AS rank 
FROM Books 
JOIN Authors ON Books.Authors_id = Authors.Authors_id
JOIN Geners ON Books.gener_id = Geners.gener_id
ORDER BY revenue DESC;

select top 5 
sales.book_id ,Books.title
from sales
join Books  on Books.book_id=sales.book_id
order by sales.sales_amount


select  Rating,
case 
when rating=1 then 'BAD'
WHEN rating=2 then 'NOT BAD' 
WHEN rating=3 then 'GOOD ' 
WHEN rating=4 then 'VERY GOOD ' 
ELSE 'AMAZING'
END as  NAMED 
 FROM rating 

select count(rating) as countofrating
from Rating
group by book_id