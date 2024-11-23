CREATE TABLE `Shoe`(
  `Shoeid` INT NOT NULL,
  `Brand` VARCHAR(45),
  `Name` VARCHAR(45),
  `Size` DECIMAL(3,1),
  `Price` DECIMAL(10,2),
  `Order_OrderId` INT NOT NULL,
  `OrderItem_OrderItemid` INT NOT NULL,
  PRIMARY KEY(`Shoeid`)
) COMMENT 'the product to be sold in the online shopping system ';

CREATE TABLE `Customer`(
  `CustomerId` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(255) NOT NULL,
  `Phone` INT,
  PRIMARY KEY(`CustomerId`)
);

CREATE TABLE `Order`(
  `OrderId` INT NOT NULL,
  `OrderDate` DATE,
  `TotalAmount` DECIMAL(10,2),
  `CustomerId` INT,
  `Customer_CustomerId` INT NOT NULL,
  PRIMARY KEY(`OrderId`)
);

CREATE TABLE `OrderItem`(
  `OrderItemid` INT NOT NULL,
  `OrderId` INT,
  `ShoeId` INT,
  `Quantity` INT,
  `Price` DECIMAL(10,2),
  `Order_OrderId` INT NOT NULL,
  PRIMARY KEY(`OrderItemid`)
) COMMENT 'this is the individual item that is ordered by a customer';

CREATE TABLE `Payment`(
  `PaymentId` INT NOT NULL,
  `OrderId` INT,
  `PaymentDate` DATETIME NOT NULL,
  `Amount` DECIMAL(10,2),
  `PaymentMethod` VARCHAR(50),
  `Order_OrderId` INT NOT NULL,
  PRIMARY KEY(`PaymentId`)
);

ALTER TABLE `Order`
  ADD CONSTRAINT `Customer_Order`
    FOREIGN KEY (`Customer_CustomerId`) REFERENCES `Customer` (`CustomerId`);

ALTER TABLE `OrderItem`
  ADD CONSTRAINT `Order_OrderItem`
    FOREIGN KEY (`Order_OrderId`) REFERENCES `Order` (`OrderId`);

ALTER TABLE `Shoe`
  ADD CONSTRAINT `OrderItem_Shoe`
    FOREIGN KEY (`OrderItem_OrderItemid`) REFERENCES `OrderItem` (`OrderItemid`)
  ;

ALTER TABLE `Payment`
  ADD CONSTRAINT `Order_Payment`
    FOREIGN KEY (`Order_OrderId`) REFERENCES `Order` (`OrderId`);
