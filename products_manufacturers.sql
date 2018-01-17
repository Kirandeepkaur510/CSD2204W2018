CREATE TABLE manu(
Code INTEGER(3) AUTO_INCREMENT ,
Name VARCHAR(50) NOT NULL,
CONSTRAINT PK_MANU PRIMARY KEY (CODE)
);

INSERT INTO manu(Name) VALUES('Sony');
INSERT INTO manu(Name) VALUES('Creative Labs');
INSERT INTO manu(Name) VALUES('Hewlett-Packard');
INSERT INTO manu(Name) VALUES('Iomega');
INSERT INTO manu(Name) VALUES('Fujitsu');
INSERT INTO manu(Name) VALUES('Winchester');
INSERT INTO manu(Name) VALUES('moxDroid Labs Inc');
INSERT INTO manu(Name) VALUES("Dell");
INSERT INTO manu(Name) VALUES("Bell Labs");

CREATE TABLE Products (
    Code INTEGER(3) AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL ,
    Price DECIMAL NOT NULL ,
    Manufacturer INTEGER(3),
    CONSTRAINT PK_PRODUCTS PRIMARY KEY (Code),
    CONSTRAINT FK_PRODUCTS FOREIGN KEY (Manufacturer) REFERENCES manu(Code) 
    );

INSERT INTO Products(Name,Price,Manufacturer) VALUES('Hard drive',240,5);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('Memory',120,6);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('ZIP drive',150,4);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('Floppy disk',5,6);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('Monitor',240,1);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('DVD drive',180,2);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('CD drive',90,2);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('Printer',270,3);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('Toner cartridge',66,3);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('DVD burner',180,2);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('Printer',40.00,7);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('Toner cartridge',54.00,7);
INSERT INTO Products(Name,Price,Manufacturer) VALUES('DVD burner',78.00,7);


