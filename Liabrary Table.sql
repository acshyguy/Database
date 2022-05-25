-- create database library;
use library;
create table Book(
Book_id int(45) Not Null,
BookName varchar(225) Not NUll,
BookAuthor varchar(225) Not Null,
constraint Book_PK Primary Key(Book_id)
);

create table Staff(
Staff_id int(45) Not Null,
FullName varchar(225) Not Null,
EmailAddress varchar(100) Not Null,
PhoneNumber INT(15) Not Null,
Address varchar(45) Not Null,
Job varchar(100) Not Null,
constraint Staff_PK Primary key(Staff_id)
);

create table Transactions(
Transaction_id int(45) Not Null,
Issue_date DATE Not Null,
Return_date DATE Not Null,
Member_id int(45) Not Null,
Staff_id int(45) Not Null,
Book_id int(45) Not Null,
constraint Transaction_PK Primary Key(Transaction_id),

constraint Member_FK Foreign key(Member_id) 
				references Member(Member_id),
                
constraint Staff_FK Foreign key(Staff_id) 
				references Staff(Staff_id),
                
constraint Book_FK Foreign key(Book_id) 
			references Book(Book_id)
			
); 


CREATE TABLE Member (
    Member_id INT(45) NOT NULL,
    FullName VARCHAR(225) NOT NULL,
    Gender VARCHAR(15) NOT NULL,
    Address VARCHAR(225) NOT NULL,
    Contact VARCHAR(15) NOT NULL,
    constraint Member_PK Primary Key(Member_id)
    
);


-- alter table member
-- modify column contact varchar(45);

alter table member
add primary key (member_id);






