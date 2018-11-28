
CREATE TABLE product (
  productID int NOT NULL,
  productName varchar(70) NOT NULL,
  productDescription clob NOT NULL,
  productType varchar(150) NOT NULL,
  productPrice int NOT NULL,
  productPhoto varchar(300) NOT NULL,
  PRIMARY KEY (productID)
) ;

insert  into product(productID,productName,productDescription,productType,productPrice,productPhoto) values 
(1,'Welcome new born set','-a piece of the moon balloon
-heart balloon bouquet
-number balloon
-happy birthday letter accessory','birth',1000,'images/birth/birth1.jpg'),
(2,'Luxury birthday set','- black and white balloons
- number balloons','birth',1000,'images/birth/birth2.jpg'),
(3,'Birthday set 1','-number balloon 
-rose gold balloon bouquet','birth',1000,'images/birth/birth3.jpg'),
(4,'Birthday set 2','-number balloon 
-glitter balloon bouquet','birth',1000,'images/birth/birth4.jpg'),
(5,'Birthday set 3 ','-number balloon 
-star&glitter balloon bouquet','birth',1000,'images/birth/birth5.jpg'),
(6,'Minimal birthday set','-happy birthday alphabet balloon','birth',1000,'images/birth/birth6.jpg'),
(7,'Alphabet balloon with a balloon  accessory','-wine balloon
-a glass of wine balloon
-two star balloons
-white&pink balloon bouquet','birth',1000,'images/birth/birth7.jpg'),
(8,'Luxury gray party set','- gray
- white
- moon
- star','party',1000,'images/party/p1.jpg'),
(9,'Rose gold party set','- rose gold
- glitter','party',1000,'images/party/p2.jpg'),
(10,'Purple party set','- pink
- blue
- purple glitter
- star
- heart ','party',1000,'images/party/p3.jpg'),
(11,'Luxury pink party set','- ping
- white
- marble
- glitter
- heart','party',1000,'images/party/p4.jpg'),
(12,'Twinkle stars party set','- moon
- stars
- gliiter','party',1000,'images/party/p5.jpg'),
(13,'Purple party set','- pink
- purple
- purple marble
- glitter','party',1000,'images/party/p6.jpg'),
(14,'Glitter party set','- glitter','party',1000,'images/party/p7.jpg'),
(15,'Moon in the sky party set','- moon
- yellow
- blue
- glitter','party',1000,'images/party/p8.jpg'),
(16,'Blue and purple party set','- blue
- purple
- glitter','party',1000,'images/party/p9.jpg'),
(17,'Feel hot party set','- dark red
- red
- white
- glitter','party',1000,'images/party/p10.jpg'),
(18,'Luxury pink party set','- rose gold
- pink
- white
- glitter','party',1000,'images/party/p11.jpg'),
(19,'Vintage party set','- gray
- rose gold
- cream
- marble','party',1000,'images/party/p12.jpg'),
(20,'Shining purple party set','- purple
- rose gold
- glitter','party',1000,'images/party/p13.jpg'),
(21,'Black and white party set','- black
- white
- marble
- glitter','party',1000,'images/party/p14.jpg'),
(22,'Catchy set','- yellow
- black
- marble
- glitter','celebrate',1000,'images/celebrate/cele1.jpg'),
(23,'Joyful set','-plain latex 
-glitter
-texts','celebrate',1000,'images/celebrate/cele2.jpg'),
(24,'Lovely set','-marble
-glitter
-texts','celebrate',1000,'images/celebrate/cele3.jpg'),
(25,'Marries set','-glitter
-gold plain latex
-texts plain latex','celebrate',1000,'images/celebrate/cele4.jpg'),
(26,'Love set','-glitter
-heart rose gold 
-pink plain latex
-white plain latex
-"love"balloon','celebrate',1000,'images/celebrate/cele5.jpg'),
(27,'Girl set','-glitter 
-pink plain latex
-white plain latex
-"girl" balloon','celebrate',1000,'images/celebrate/cele6.JPG'),
(28,'Marries set 2','-text','celebrate',1000,'images/celebrate/cele7.jpg'),
(29,'Marries set 3','-glitter
-text','celebrate',1000,'images/celebrate/cele8.jpg');




CREATE TABLE account(
  accID int primary key generated always as identity (start with 1,increment by 1),
  userName varchar(50) NOT NULL,
  passWord varchar(50) NOT NULL,
  email varchar(100) NOT NULL
) ;


insert into account(userName,passWord,email) values
('test','test','test@mail.kmutt.ac.th');




CREATE TABLE favorite(
  favID int primary key generated always as identity (start with 1,increment by 1),
  accID int NOT NULL,
  productID int NOT NULL
) ;





