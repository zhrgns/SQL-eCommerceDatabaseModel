------------------------------------------------INSERT VALUES------------------------------------------------

--INSERT CUSTOMER ROWS--
INSERT INTO CUSTOMER 
VALUES 	( 1000001, 'Ally', 'Bruckman',TO_DATE('FEB 16, 1992','MON DD, YYYY'),'F', 'abruckman0@ask.com','pw12pw12', 4795701638);

INSERT INTO CUSTOMER 
VALUES 	( 1000002, 'Ayse','GUL',TO_DATE('JUL 24, 1987','MON DD, YYYY'),'F','gulayse.m@yahoo.com','pw34w34', 5430012000);

INSERT INTO CUSTOMER 
VALUES 	( 1000003, 'Andrej', 'Limerick',TO_DATE('AUG 5, 2002','MON DD, YYYY'),'M','alimerick1@redcross.org','12321PW', 5321202111);

INSERT INTO CUSTOMER 
VALUES 	( 1000004, 'Reena', 'Cuer',TO_DATE('OCT 5, 1994','MON DD, YYYY'),'F','rcuer2@netlog.com','23242526', 5054043020);

INSERT INTO CUSTOMER 
VALUES 	( 1000005, 'Samara', 'Simonnot',TO_DATE('JUL 24, 1987','MON DD, YYYY'),'F','snernhr@hotmail.com','pwPWpw', 5332331221);


--INSERT ADDRESS ROWS--
INSERT INTO ADDRESS (AddressID, Country, City, AddressLine, PostalCode, CustomerID) 
VALUES 	(1000011,'Poland','Bralin','68116 Browning Junction','63640', 1000001)

INSERT INTO ADDRESS (AddressID, Country, City, AddressLine, PostalCode, CustomerID) 
VALUES 	(1000021,'Poland','Sulechów','2511 Sunfield Street','66101', 1000001)

INSERT INTO ADDRESS (AddressID, Country, City, AddressLine, PostalCode, CustomerID) 
VALUES 	(1000012,'Canada','Québec','87066 Morning Center',null, 1000002)

INSERT INTO ADDRESS (AddressID, Country, City, AddressLine, PostalCode, CustomerID) 
VALUES 	(1000013,'Sweden','Gotene','55540 Bobwhite Place','53330', 1000003)

INSERT INTO ADDRESS (AddressID, Country, City, AddressLine, PostalCode, CustomerID) 
VALUES 	(1000022,'Canada','Beaumont','8 Kings Lane',null, 1000002)

INSERT INTO ADDRESS (AddressID, Country, City, AddressLine, PostalCode, CustomerID) 
VALUES 	(1000014,'Ukraine','Denyshi','1469 Arkansas Hill',null, 1000004)


--INSERT CREDITCARDS--
INSERT INTO CREDITCARD (CreditCardNo, BankName, CCardUserName) 
VALUES 	(4405832188349665,'visa-electron', 'Reena Cuer')

INSERT INTO CREDITCARD (CreditCardNo, BankName, CCardUserName) 
VALUES 	(3560852729276634,'jcb', 'Ayse GUL')

INSERT INTO CREDITCARD (CreditCardNo, BankName, CCardUserName) 
VALUES 	(3421038101555711, 'americanexpress', 'Andrej Limerick')

INSERT INTO CREDITCARD (CreditCardNo, BankName, CCardUserName) 
VALUES 	(5269461760939529, 'mastercard', 'Reena Cuer')

INSERT INTO CREDITCARD (CreditCardNo, BankName, CCardUserName) 
VALUES 	(4903216277029601, 'switch', 'Samara Simonnot')

INSERT INTO CREDITCARD (CreditCardNo, BankName, CCardUserName) 
VALUES 	(6767819161411189, 'solo', 'Ayse GUL')


--INSERT CREDITCARDUSERS--

INSERT INTO CREDITCARDUSER (CreditCardNo, CustomerID, RegistrationDay)
VALUES 	(6767819161411189, 1000002, SYSDATE)

INSERT INTO CREDITCARDUSER (CreditCardNo, CustomerID, RegistrationDay)
VALUES 	(4903216277029601, 1000005, SYSDATE)

INSERT INTO CREDITCARDUSER (CreditCardNo, CustomerID, RegistrationDay)
VALUES 	(5269461760939529, 1000004, SYSDATE)

INSERT INTO CREDITCARDUSER (CreditCardNo, CustomerID, RegistrationDay)
VALUES 	(3421038101555711, 1000003, SYSDATE)

INSERT INTO CREDITCARDUSER (CreditCardNo, CustomerID, RegistrationDay)
VALUES 	(3560852729276634, 1000002, SYSDATE)

INSERT INTO CREDITCARDUSER (CreditCardNo, CustomerID, RegistrationDay)
VALUES 	(4405832188349665, 1000004, SYSDATE)


--INSERT MERCHANTS--
INSERT INTO MERCHANTS (MerchantID, MerchantName, MerchantPhoneNumber, MerchantEmail, Password, Country, City, AddressLine, PostalCode, StartDate, EndDate)
VALUES ( 1100001, 'Steuber Group', 	5938763057, 'steubergroup@help.com', 'pw23pw23','Turkey', 'Istanbul', 'Atasehir',34000,sysdate, null)

INSERT INTO MERCHANTS (MerchantID, MerchantName, MerchantPhoneNumber, MerchantEmail, Password, Country, City, AddressLine, PostalCode, StartDate, EndDate)
VALUES ( 1100002, 'Hoppe Inc', 5685593931, 'hoppeinc@help.com', 'pw45pw23','Turkey', 'Kocaeli', null, 41000,sysdate,null)

INSERT INTO MERCHANTS (MerchantID, MerchantName, MerchantPhoneNumber, MerchantEmail, Password, Country, City, AddressLine, PostalCode, StartDate, EndDate)
VALUES ( 1100003, 'Kovacek LLC', 5958495759, 'kovacek@help.com', 'pw45pwpw','Turkey','Istanbul', 'Tuzla', 34000,sysdate,null)

INSERT INTO MERCHANTS (MerchantID, MerchantName, MerchantPhoneNumber, MerchantEmail, Password, Country, City, AddressLine, PostalCode, StartDate, EndDate)
VALUES ( 1100004, 'Lesch Group', 5904974952, 'leschgroup@help.com', 'pw4567pw', 'Turkey', 'Kocaeli', null, 41000,sysdate,null)

INSERT INTO MERCHANTS (MerchantID, MerchantName, MerchantPhoneNumber, MerchantEmail, Password, Country, City, AddressLine, PostalCode, StartDate, EndDate)
VALUES ( 1100005, 'Thiel LLC', 5218366574, 'thielllc@help.com', '1223pw23','Turkey', 'Izmir', 'Cigli', 35000,sysdate,null)

INSERT INTO MERCHANTS (MerchantID, MerchantName, MerchantPhoneNumber, MerchantEmail, Password, Country, City, AddressLine, PostalCode, StartDate, EndDate)
VALUES ( 1100006, 'Emard Inc', 5825043405, 'emardinc@help.com','pw231123', 'Turkey', 'Istanbul', 'Tuzla',34000,sysdate,null)


--INSERT PRODUCTS-- 
INSERT INTO PRODUCTS(ProductID, ProductName, ProductDescription, ProductCategory)
VALUES (9523000101, 'ResincretePalladiano Tile','120x120 Matt Fango R9 Colorbody Porcelain', 'Tiles' )

INSERT INTO PRODUCTS(ProductID, ProductName, ProductDescription, ProductCategory)
VALUES (9523000102, 'CobbleMix Tile','80x80Light Grey Straight Brick Matt R10B Porcelain', 'Tiles' )

INSERT INTO PRODUCTS(ProductID, ProductName, ProductDescription, ProductCategory)
VALUES (9523000103, 'CobbleMix Tile','80x80 Dark Grey Pave Matt R10B Porcelain', 'Tiles' )

INSERT INTO PRODUCTS(ProductID, ProductName, ProductDescription, ProductCategory)
VALUES (5523000101, 'Rain Q Showerhead' , 'Chrome', 'Shower Systems' )

INSERT INTO PRODUCTS(ProductID, ProductName, ProductDescription, ProductCategory)
VALUES (5523000102, 'Suit Shower Set' , 'Chrome, with Rain Q Showerhead', 'Shower Systems' )


--INSERT PRODUCT DETAIL--
INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (9523000101, 1100001, 609.90, SYSDATE, NULL, 499,1)-- 

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (9523000102, 1100001, 449.90, SYSDATE, NULL, 450,50)--

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (9523000103, 1100001, 759.90, SYSDATE, NULL, 990,10)--

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (5523000101, 1100003,2029.90, SYSDATE, NULL, 980, 20)

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (5523000102, 1100003, 429.90, SYSDATE, NULL, 990, 10)

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (9523000101,1100004, 749.90, SYSDATE, NULL, 990, 10)

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (9523000101, 1100002, 719.90, SYSDATE, NULL, 950, 50)--

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (9523000102, 1100002, 759.90, SYSDATE, NULL, 990, 10)--

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (5523000101, 1100006, 159.90, SYSDATE, NULL, 300, 700)--

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (5523000102, 1100006, 2029.90, SYSDATE, NULL, 940, 60)--

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (9523000101, 1100005, 739.90, SYSDATE, NULL, 900, 100)--

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (9523000102, 1100005, 639.90, SYSDATE, SYSDATE, 0, 500)--

INSERT INTO PRODUCTS_DETAIL (ProductID, MerchantID, ListPrice, StartDate, EndDate, MerchantProductStock, MerchantProductSold)
VALUES (9523000103, 1100005, 519.90, SYSDATE, SYSDATE, 0, 500)--



--INSERT   ORDERS-- 2
INSERT INTO ORDERS (OrderID, OrderDate, ShippedDate, RequiredDate, OrderStatus, PaymentID, CustomerID)
VALUES (630000000301,SYSDATE,SYSDATE, TO_DATE('DEC 30, 2022','MON DD, YYYY'),'Shipped',630000000301,1000003)

INSERT INTO ORDERS (OrderID, OrderDate, ShippedDate, RequiredDate, OrderStatus, PaymentID, CustomerID)
VALUES (630000000302,SYSDATE,SYSDATE, TO_DATE('DEC 30, 2022','MON DD, YYYY'),'Shipped',630000000302,1000002)

INSERT INTO ORDERS (OrderID, OrderDate, ShippedDate, RequiredDate, OrderStatus, PaymentID, CustomerID)
VALUES (630000000303,SYSDATE,null, null,'Inline',630000000303,1000002)

INSERT INTO ORDERS (OrderID, OrderDate, ShippedDate, RequiredDate, OrderStatus, PaymentID, CustomerID)
VALUES (630000000304,SYSDATE,null, null,'Inline',630000000304,1000004)

INSERT INTO ORDERS (OrderID, OrderDate, ShippedDate, RequiredDate, OrderStatus, PaymentID, CustomerID)
VALUES (630000000305,SYSDATE,null, null,'Inline',630000000305,1000003)



--INSERT PAYMENT-- 
INSERT INTO PAYMENT (PaymentID, PaymentDate,AMOUNT,CREDITCARDNO)
VALUES (630000000301, SYSDATE, (500*519.90+ 500*639.90), 3421038101555711)

INSERT INTO PAYMENT (PaymentID, PaymentDate,AMOUNT,CREDITCARDNO)
VALUES (630000000302, SYSDATE, (10*759.90+ 50*719.90), 3560852729276634)

INSERT INTO PAYMENT (PaymentID, PaymentDate,AMOUNT,CREDITCARDNO)
VALUES (630000000303, SYSDATE, (100*739.90), 5269461760939529)

INSERT INTO PAYMENT (PaymentID, PaymentDate,AMOUNT,CREDITCARDNO)
VALUES (630000000304, SYSDATE, (700*159.90+ 60*2029.90), 4405832188349665)

INSERT INTO PAYMENT (PaymentID, PaymentDate,AMOUNT,CREDITCARDNO)
VALUES (630000000305, SYSDATE, (1* 609.90 + 50*449.90 + 10*759.90), 3421038101555711)


--INSERT ORDER DETAIL-- 
INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000001, 500, 9523000102, 630000000301)

INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000002, 500, 9523000103, 630000000301)

INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000003, 10, 9523000102, 630000000302)

INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000004, 10, 9523000101, 630000000302)

INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000005, 100, 9523000101, 630000000303)

INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000005, 100, 9523000101, 630000000303)

INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000006, 60, 5523000102, 630000000304)

INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000007, 700, 5523000101, 630000000304)

INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000008, 50, 9523000102, 630000000305)

INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000009, 10, 9523000103, 630000000305)

INSERT INTO ORDER_DETAIL (OD_ID, QUANTITYORDERED, PRODUCTID, ORDERID)
VALUES (3000000010, 1, 9523000101, 630000000305)

--INSERT CAMPAIGN

INSERT INTO CAMPAIGN (CampaignID, CampaignDescription, StartDate, EndDate, Discount)
VALUES (900001,'Discount for 1 hour',SYSDATE,NULL,1)

INSERT INTO CAMPAIGN (CampaignID, CampaignDescription, StartDate, EndDate, Discount)
VALUES (900002,'Discount for 1 hour',SYSDATE,NULL,1)

INSERT INTO CAMPAIGN (CampaignID, CampaignDescription, StartDate, EndDate, Discount)
VALUES (900003,'Discount for 1 hour',SYSDATE,NULL,1)

INSERT INTO CAMPAIGN (CampaignID, CampaignDescription, StartDate, EndDate, Discount)
VALUES (900004,'Discount for 1 hour',SYSDATE,NULL,1)

INSERT INTO CAMPAIGN (CampaignID, CampaignDescription, StartDate, EndDate, Discount)
VALUES (900005,'Discount for 1 hour',SYSDATE,NULL,1)

--INSERT COMMENT
INSERT INTO COMMENTS (CommentID, CommentHeader, CommentLine, EntryDate, OD_ID)
VALUES(1000001,'BestChoice', 'Excellent Products', SYSDATE, 3000000001)

INSERT INTO COMMENTS (CommentID, CommentHeader, CommentLine, EntryDate, OD_ID)
VALUES(1000002,'Love It', 'Excellent Products', SYSDATE, 3000000002)

INSERT INTO COMMENTS (CommentID, CommentHeader, CommentLine, EntryDate, OD_ID)
VALUES(1000003, 'BestofWorld', 'Amazing Company', SYSDATE, 3000000003)

INSERT INTO COMMENTS (CommentID, CommentHeader, CommentLine, EntryDate, OD_ID)
VALUES(1000004,'Like It', 'Beautiful Products', SYSDATE, 3000000004)

INSERT INTO COMMENTS (CommentID, CommentHeader, CommentLine, EntryDate, OD_ID)
VALUES(1000005, 'Amazing Company','Best of All',SYSDATE, 3000000005)


--INSERT SHIPPING
INSERT INTO SHIPPING (ShippingID, CompanyName, CompanyPhoneNumber, OrderID)
VALUES(987000101,'Dynamics Trans',5943204567,630000000301)

INSERT INTO SHIPPING (ShippingID, CompanyName, CompanyPhoneNumber, OrderID)
VALUES(987000102,'Dynamics Trans',5943204567,630000000302)

INSERT INTO SHIPPING (ShippingID, CompanyName, CompanyPhoneNumber, OrderID)
VALUES(987000103,'Dynamics Trans',5943204567,630000000303)

INSERT INTO SHIPPING (ShippingID, CompanyName, CompanyPhoneNumber, OrderID)
VALUES(987000104,'Dynamics Trans',5943204567,630000000304)

INSERT INTO SHIPPING (ShippingID, CompanyName, CompanyPhoneNumber, OrderID)
VALUES(987000105,'Dynamics Trans',5943204567,630000000305)




