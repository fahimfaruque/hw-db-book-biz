use booksbusiness;

/*
Adding data to Books
*/

insert into `Books` value(`Talking to humans`, `Mystery`, 1223456734, `English`,`2022`, 234,1, 39.99, 1);
insert into `Books` value(`Talking to animals`, `Horror`, 1232323533, `English`, 1922, 453,2, 29.99, 2);
insert into `Books` value(`Talking to cats`, `Comedy`, 1223485734, `English`, 2021, 232,3, 67.99, 1);

/*
Adding data to Editors
*/

insert into `Editors` value(1,`Jerry Sal`,`123 Address St`,NULL,`Boston`,`MA`,`USA`,`12343`,`tom@gmail.com`,`2232232233`);
insert into `Editors` value(2,`Mickey Rife`,`125 Address St`,`Apt 3`,`Boston`,`MA`,`USA`,`12343`,`can@gmail.com`,`2232222233`);


/*
Adding data to Publishers
*/

insert into `Publishers` value(1,`Great Books`,`123 Mickey St`,NULL,`Boston`,`MA`,`USA`,`12343`,`gb@gmail.com`,`2232232133`);
insert into `Publishers` value(2,`Rife PubLishing`,`125 Cats St`,NULL,`Boston`,`MA`,`USA`,`12343`,`rife@gmail.com`,`2232262233`);


/*
Adding data to Authors
*/

insert into `Authors` value(1,`Milley Sal`,`123 Rimmy St`,NULL,`Boston`,`MA`,`USA`,`12343`,`trrrr@gmail.com`,`2232652233`);
insert into `Authors` value(2,`Big Rife`,`125 Author St`,`Apt 4`,`Boston`,`MA`,`USA`,`12343`,`dfsdf@gmail.com`,`2232222443`);



/*
Adding data to Customers
*/

insert into `Customers` value(1,`Milley Aff`,`123 Rimmy St`,NULL,`Boston`,`MA`,`USA`,`12343`,`trrrr@gmail.com`,`2232652276`);
insert into `Customers` value(2,`Big Qan`,`125 Author St`,`Apt 4`,`Boston`,`MA`,`USA`,`12343`,`dfsdf@gmail.com`,`2299222443`);
insert into `Customers` value(3,`Bill Kim`,`123 Rimmy St`,NULL,`Boston`,`MA`,`USA`,`12343`,`trrrr@gmail.com`,`2232650076`);
insert into `Customers` value(4,`Ran Qan`,`125 Author St`,`Apt 4`,`Boston`,`MA`,`USA`,`12343`,`dfsdf@gmail.com`,`2277222443`);

/*
Adding data to Orders
*/

insert into `Orders` value(1,`2022-5-12 04:04:04`,1223456734,1);
insert into `Orders` value(2,`2022-5-12 04:04:04`,1232323533,1);
insert into `Orders` value(3,`2022-6-12 04:04:04`,1232323533,2);
insert into `Orders` value(4,`2022-6-12 04:12:04`,1223485734,1);
insert into `Orders` value(5,`2022-8-12 04:04:04`,1223456734,3);
insert into `Orders` value(6,`2022-8-12 04:04:04`,1232323533,3);
insert into `Orders` value(7,`2022-9-12 04:04:04`,1232323533,3);
insert into `Orders` value(8,`2022-9-12 04:15:04`,1223485734,4);


/*
Adding data to BooksEditors
*/

insert into `BooksEditors` value(1,1,1223456734);
insert into `BooksEditors` value(2,2,1232323533);
insert into `BooksEditors` value(2,3,1223485734);



/*
Adding data to BooksAuthors
*/

insert into `BooksAuthors` value(1,1,1223456734);
insert into `BooksAuthors` value(2,2,1232323533);
insert into `BooksAuthors` value(3,1,1223485734);

                