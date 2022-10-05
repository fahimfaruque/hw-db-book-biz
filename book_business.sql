drop database if exists booksbusiness;
create database if not exists booksbusiness;
use booksbusiness;

/*
Table Customers
*/

create table `Customers` ( 
	`CustomerID` int NOT NULL,
    `CustomerName`  varchar(1000) NOT NULL,
    `Address1`   varchar(1000) NULL,
    `Address2`  varchar(1000) NULL,
    `City` varchar(50) NULL,
    `State` varchar(50) NULL,
    `Country` varchar(50) NULL,
    `Zipcode` varchar(50) NULL,
    `Email` varchar(50) NULL,
    `Phone` varchar(50) NULL,
	PRIMARY KEY (`CustomerID`),
    index `CustomerID` (`CustomerID` ASC)
	);
    

/*
Table Editors
*/

create table `Editors` ( 
	`EditorID` int NOT NULL,
    `EditorName`  varchar(1000) NOT NULL,
    `Address1`   varchar(1000) NULL,
    `Address2`  varchar(1000) NULL,
    `City` varchar(50) NULL,
    `State` varchar(50) NULL,
    `Country` varchar(50) NULL,
    `Zipcode` varchar(50) NULL,
    `Email` varchar(50) NULL,
    `Phone` varchar(50) NULL,
	PRIMARY KEY (`EditorID`),
	index `EditorID` (`EditorID` ASC)
	);
    
/*
Table Publishers
*/

create table `Publishers` ( 
	`PublisherID` int NOT NULL,
    `PublisherName`  varchar(1000) NOT NULL,
    `Address1`   varchar(1000) NULL,
    `Address2`  varchar(1000) NULL,
    `City` varchar(50) NULL,
    `State` varchar(50) NULL,
    `Country` varchar(50) NULL,
    `Zipcode` varchar(50) NULL,
    `Email` varchar(50) NULL,
    `Phone` varchar(50) NULL,
	PRIMARY KEY (`PublisherID`),
    index `PublisherID` (`PublisherID` ASC)
	);

 /*
Table Authors
*/   
    
create table `Authors` ( 
	`AuthorID` int NOT NULL,
    `AuthorName`  varchar(1000) NOT NULL,
    `Address1`   varchar(1000) NULL,
    `Address2`  varchar(1000) NULL,
    `City` varchar(50) NULL,
    `State` varchar(50) NULL,
    `Country` varchar(50) NULL,
    `Zipcode` varchar(50) NULL,
    `Email` varchar(50) NULL,
    `Phone` varchar(50) NULL,
	PRIMARY KEY (`AuthorID`),
    index `AuthorID` (`AuthorID` ASC)
	);


/*
Table Books
*/



create table `Books` ( 
	`BookName` varchar(1000) NOT NULL,
    `Genre`  varchar(1000) NULL,
    `IBSN-10`  int NOT NULL,
    `Language`  varchar(30) NULL,
    `PublicationDate` varchar(1000) NULL,
    `Pages` int NULL,
    `Edition` int NULL,
    `Price` float NOT NULL,
	PRIMARY KEY (`IBSN-10`),
	`PublisherID` int NOT NULL,
    foreign key (`PublisherID`) references `Publishers` (`PublisherID`)
		on delete no action
        on update no action
	);



/*
Table BooksEditors
*/

create table `BooksEditors` (
	`BookEditorID` int NOT NULL,
    PRIMARY KEY (`BookEditorID`),
    `EditorID` int NOT NULL,
    foreign key (`EditorID`) references `Editors` (`EditorID`),
    `IBSN-10` int NOT NULL,    
    foreign key (`IBSN-10`) references `Books` (`IBSN-10`)
		on delete no action
        on update no action
    );


 
 /*
Table BooksAuthors
*/

create table `BooksAuthors` (
	`BookAuthorID` int NOT NULL,
    PRIMARY KEY (`BookAuthorID`),
    `AuthorID` int NOT NULL,
    foreign key (`AuthorID`) references `Authors` (`AuthorID`),
    `IBSN-10` int NOT NULL,
    foreign key (`IBSN-10`) references `Books` (`IBSN-10`)
		on delete no action
        on update no action
     );   


 
/*
Table Orders
*/

create table `Orders` ( 
	`OrderID` int NOT NULL,
    `OrderDate`  datetime NOT NULL,
    primary key (`OrderID`),
    `IBSN-10` int NOT NULL,   
    foreign key (`IBSN-10`) references `Books` (`IBSN-10`),
    `CustomerID` int NOT NULL,    
    foreign key (`CustomerID`) references `Customers` (`CustomerID`)    
		on delete no action
        on update no action
    );

        
