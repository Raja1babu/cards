drop table if exists cards;

CREATE TABLE `cards` (
`card_id` int AUTO_INCREMENT PRIMARY KEY,
`customer_id` int NOT NULL ,
`card_number` BIGINT NOT NULL,
`card_type` varchar(100) NOT NULL,
`cvv_number` BIGINT NOT NULL,
`expiry_date` date DEFAULT NULL
);


INSERT INTO `cards` ( `customer_id`, `card_number`, `card_type`, `cvv_number`, `expiry_date`)
VALUES ( 1, 23736, 'DEBIT_CARD', 123, CURDATE());

INSERT INTO `cards` ( `customer_id`, `card_number`, `card_type`,`cvv_number`, `expiry_date`)
VALUES ( 1, 87235, 'CREDIT_CARD', 124, CURDATE());

INSERT INTO `cards` ( `customer_id`, `card_number`, `card_type`, `cvv_number`, `expiry_date`)
VALUES ( 2, 87346, 'DEBIT_CARD', 456, CURDATE());

INSERT INTO `cards` ( `customer_id`, `card_number`, `card_type`, `cvv_number`, `expiry_date`)
VALUES ( 2, 43878, 'CREDIT_CARD', 345, CURDATE());






