create database Myntra;
use Myntra;
create table product(id int primary key auto_increment,name varchar(30),price int,image_url varchar(50),category varchar(30));
create table user(id int primary key auto_increment,name varchar(30),email varchar(30),password varchar(100))auto_increment=100;
create table orders(id int primary key auto_increment,user_id int,total_amount int,order_date timestamp,foreign key(user_id)references user(id))auto_increment=200;
create table order_details(id int primary key auto_increment,order_id int,product_id int,quantity int,foreign key(order_id) references orders(id),foreign key(product_id) references product(id))auto_increment=300;
insert into product(name,price,image_url,category) values ('pepejeans',2500,'pepe.jpeg','Formals_Men'), ('levis',2500,'levis.jpeg','Formals_Men'), ('crocodile',3500,'crocodile.jpeg','Formals_Men'),('peterengland',2000,'peterengland.jpeg','Formals_Men'),
('pepejeans',550,'pepeg.jpeg','Formals_Women'),  ('levisjeans',500,'levisg.jpeg','Formals_Women'),('crocodilejeans',2500,'crocodileg.jpeg','Formals_Women'),  ('peterengland',1000,'peterenglandg.jpeg','Formals_Women'),  
('pepejeans',2000,'pepec.jpeg','Casual_Men'), ('levisjeans',2500,'levisc.jpeg','Casual_Men'),  ('crocodilejeans',2500,'crocodilec.jpeg','Casual_Men'),  ('peterengland',2000,'peterenglandc.jpeg','Casual_Men'),
('pepejeans',2500,'pepecw.jpeg','Casual_Women'),  ('levisjeans',2500,'leviscw.jpeg','Casual_Women'),  ('crocodilejeans',2500,'crocodilecw.jpeg','Casual_Women'),  ('peterengland',2500,'peterenglandcw.jpeg','Casual_Women'),
('pepejeans',2500,'pepee.jpeg','Ethnic_Men'),  ('levisjeans',2500,'levise.jpeg','Ethnic_Men'),  ('crocodile',2500,'crocodilee.jpeg','Ethnic_Men'),  ('peterengland',5500,'peteenglande.jpeg','Ethnic_Men');          