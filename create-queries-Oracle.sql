-----------------------------------------------CREATE TABLES------------------------------------------------
--1 CUSTOMER----------------------------------------------------------------------------------------------
CREATE TABLE CUSTOMER
	(CustomerID number(7) PRIMARY KEY,
	FirstName nvarchar2(25) NOT NULL,
	LastName nvarchar2(25) NOT NULL,
	BirthDate date NOT NULL,
	Gender char(1),
	Email nvarchar2(50) NOT NULL,
	Password nvarchar2(10) NOT NULL,
	PhoneNumber NUMBER(10) NOT NULL,
	CONSTRAINT CUST_UK_EMAIL UNIQUE (Email),
	CONSTRAINT CUST_UK_PHONE UNIQUE (PhoneNumber)
	);


--2 ADDRESS----------------------------------------------------------------------------------------------
CREATE TABLE ADDRESS
	(AddressID number(7) PRIMARY KEY,
	Country nvarchar2(25) NOT NULL,
	City nvarchar2(25) NOT NULL,
	AddressLine  nvarchar2(200) NOT NULL,
	PostalCode number(5),
	CustomerID number(7) NOT NULL,
	CONSTRAINT ADD_FK_CUST FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID) 
	);


--3 CREDIT CARD----------------------------------------------------------------------------------------------
CREATE TABLE CREDITCARD
	(CreditCardNo number(16) PRIMARY KEY,
	BankName nvarchar2(50) NOT NULL,
	CCardUserName nvarchar2(50) NOT NULL
	);

--4 CREDIT CARD USER----------------------------------------------------------------------------------------------
CREATE TABLE CREDITCARDUSER
	(CreditCardNo number(16),
	CustomerID number(7),
	RegistrationDay date NOT NULL,
	CONSTRAINT CC_CUST_ID FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
	CONSTRAINT CC_CCN FOREIGN KEY (CreditCardNo) REFERENCES CREDITCARD(CreditCardNo)
	);
	
	--COMPOSITE KEYLERI SADECE BU QUERY YARDIMIYLA EKLEYEBILIYORUM
	ALTER TABLE CREDITCARDUSER ADD CONSTRAINT CC_CK PRIMARY KEY (CreditCardNo,CustomerID);


--5 SHIPPING----------------------------------------------------------------------------------------------
CREATE TABLE SHIPPING
	(ShippingID number(9) PRIMARY KEY,
	CompanyName nvarchar2(25) NOT NULL,
	CompanyPhoneNumber nvarchar2(10),
	OrderID number(12),
	CONSTRAINT SHIP_ORD_FK FOREIGN KEY (OrderID) REFERENCES ORDERS(OrderID)
	);


--6 PAYMENT----------------------------------------------------------------------------------------------
CREATE TABLE PAYMENT
	(PaymentID number(12) PRIMARY KEY,
	PaymentDate date,
	Amount DECIMAL(38,2) NOT NULL,
	CREDITCARDNO NUMBER(16) NOT NULL,
	CONSTRAINT CHK_Amount CHECK (Amount >= 0),
	CONSTRAINT PAY_CCN FOREIGN KEY (CREDITCARDNO) REFERENCES CREDITCARD(CREDITCARDNO)
	);


--7 ORDERS----------------------------------------------------------------------------------------------
CREATE TABLE ORDERS
	(OrderID number(12) PRIMARY KEY,
	OrderDate DATE NOT NULL,
	ShippedDate DATE,
	RequiredDate DATE,
	OrderStatus NVARCHAR2(25),
	PaymentID number(12),
	CustomerID number(7),
	CONSTRAINT O_CUST_ID FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
	CONSTRAINT O_PAY_ID FOREIGN KEY (PaymentID) REFERENCES PAYMENT(PaymentID)
	); 

--8 CAMPAIGN----------------------------------------------------------------------------------------------
CREATE TABLE CAMPAIGN
	(CampaignID number(6) PRIMARY KEY,
	CampaignDescription NVARCHAR2(500),
	StartDate DATE NOT NULL,
	EndDate DATE,
	Discount Number(7) NOT NULL,
	CONSTRAINT CHK_CAMP_DATE CHECK (StartDate<=EndDate)
	);


--9 COMMENT----------------------------------------------------------------------------------------------
CREATE TABLE COMMENTS
	(CommentID number(7) PRIMARY KEY,
	CommentHeader NVARCHAR2(30) NOT NULL,
	CommentLine NVARCHAR2(300) NOT NULL,
	EntryDate DATE NOT NULL,
	OD_ID number(10) NOT NULL UNIQUE,
	CONSTRAINT COM_OD_FK FOREIGN KEY (OD_ID) REFERENCES ORDER_DETAIL(OD_ID)
	);


--10 MERCHANT----------------------------------------------------------------------------------------------
CREATE TABLE MERCHANTS
	(MerchantID number(7) PRIMARY KEY,
	MerchantName NVARCHAR2(25) NOT NULL,
	MerchantPhoneNumber NVARCHAR2(10) NOT NULL,
	MerchantEmail nvarchar2(50) NOT NULL,
	Password nvarchar2(10) NOT NULL,
	Country nvarchar2(25) NOT NULL,
	City nvarchar2(25) NOT NULL,
	AddressLine  nvarchar2(200),
	PostalCode number(5) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE,
	CONSTRAINT CHK_MERCH_Country CHECK (Country = 'Turkey'),
	CONSTRAINT CHK_MERCH_DATE CHECK (StartDate<=EndDate)
	);


--11 PRODUCTS----------------------------------------------------------------------------------------------
CREATE TABLE PRODUCTS
	(ProductID number(10) PRIMARY KEY,
	ProductName NVARCHAR2(25) NOT NULL,
	ProductDescription NVARCHAR2(300) NOT NULL,
	ProductCategory NVARCHAR2(25) NOT NULL
	);



--12 PRODUCTS DETAIL----------------------------------------------------------------------------------------------
CREATE TABLE PRODUCTS_DETAIL
	(ProductID number(10) NOT NULL,
	MerchantID number(7) NOT NULL,
	ListPrice DECIMAL(38,2) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE,
	MerchantProductStock NUMBER(7),
	MerchantProductSold NUMBER(7),
	CONSTRAINT PD_PROD_FK FOREIGN KEY (ProductID) REFERENCES PRODUCTS(ProductID),
	CONSTRAINT PD_MERC_FK FOREIGN KEY (MerchantID) REFERENCES MERCHANTS(MerchantID),
	CONSTRAINT CHK_PD_DATE CHECK (StartDate<=EndDate)
	);

	--COMPOSITE KEYLERI SADECE BU QUERY YARDIMIYLA EKLEYEBILIYORUM
	ALTER TABLE PRODUCTS_DETAIL ADD CONSTRAINT PD_COMP_K PRIMARY KEY (ProductID,MerchantID)
	

--13 ORDER DETAIL----------------------------------------------------------------------------------------------
CREATE TABLE ORDER_DETAIL
	(OD_ID number(10) PRIMARY KEY,
	QuantityOrdered NUMBER(7),
	ProductID number(10) NOT NULL,
	OrderID number(12) NOT NULL,
	CampaignID number(6),
	CONSTRAINT OD_PROD_FK FOREIGN KEY (ProductID) REFERENCES PRODUCTS(ProductID),
	CONSTRAINT OD_ORDER_FK FOREIGN KEY (OrderID) REFERENCES ORDERS(OrderID),
	CONSTRAINT OD_CAMP_ID_FK FOREIGN KEY (CampaignID) REFERENCES CAMPAIGN(CampaignID),
	CONSTRAINT CHK_OD_QUANT CHECK (QuantityOrdered>=1)
	);

--TO SEE TABLE NAME	
SELECT table_name
FROM user_tables