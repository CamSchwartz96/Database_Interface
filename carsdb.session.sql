CREATE TABLE `carsdb`.`client_register` ( `id` INT NOT NULL AUTO_INCREMENT , 
`firstname` VARCHAR(50) NOT NULL , `lastname` VARCHAR(50) NOT NULL , 
`email` VARCHAR(255) NOT NULL , `password` VARCHAR(20) NOT NULL , 
`address` VARCHAR(255) NOT NULL , `city` VARCHAR(255) NOT NULL , 
`state` INT NOT NULL , `zip` INT(20) NOT NULL , PRIMARY KEY (`id`))

CREATE TABLE `carsdb`.`user_car` ( `id` INT NULL , 
`Manufacturer` VARCHAR(255) NOT NULL , `Year` INT(5) NOT NULL , 
`Model` VARCHAR(255) NOT NULL )

CREATE TABLE `carsdb`.`new_mechanic` ( `Employee_ID` INT NOT NULL AUTO_INCREMENT , 
`firstname` VARCHAR(255) NOT NULL , `lastname` VARCHAR(255) NOT NULL , 
`phone_number` VARCHAR(255) NOT NULL , PRIMARY KEY (`Employee_ID`))

CREATE TABLE `carsdb`.`mechanic_tools` ( `Manufacturer` VARCHAR(255) NOT NULL , 
`Model` VARCHAR(255) NOT NULL , `Description` VARCHAR(255) NOT NULL )

CREATE TABLE `carsdb`.`total_inventory` ( `Number_Of_Cars` INT(255) NOT NULL , 
`Number_of_Tools` INT(255) NOT NULL , `Number_of_Parts` INT(255) NOT NULL )

INSERT INTO `client_register` (`id`, `firstname`, `lastname`, 
`email`, `password`, `address`, `city`, `state`, `zip`) 
VALUES ('1', 'Brian', 'Franklin', 'bfrank@gmail.com', 'password1', 
'44200 Mound Rd', 'Warren', 'MI', '48093'), 
(NULL, '', '', '', '', '', '', '', '')

INSERT INTO `client_register` (`id`, `firstname`, `lastname`, 
`email`, `password`, `address`, `city`, `state`, `zip`) 
VALUES ('2', 'Brittany', 'Simpson', 'britsim3@yahoo.com', 'password2', 
'1234 Main St', 'Royal Oak', 'MI', '48092'), 
(NULL, '', '', '', '', '', '', '', '')

INSERT INTO `user_car` (`id`, `Manufacturer`, `Year`, `Model`)
VALUES ('1', 'Subaru', '2019', 'Outback')

INSERT INTO `user_car` (`id`, `Manufacturer`, `Year`, `Model`) 
VALUES ('2', 'Chevy', '2011', 'Silverado')

INSERT INTO `mechanic_tools` (`Manufacturer`, `Model`, `Description`) 
VALUES ('Bahco', 'Adjustable Wrench', 'An open-end wrench with a movable jaw, 
allowing it to be \r\nused with different sizes of fastener head ( nut, bolt, etc.)
\r\nrather than just one fastener size, as with a conventional fixed spanner.\r\n')

INSERT INTO `mechanic_tools` (`Manufacturer`, `Model`, `Description`) 
VALUES ('Grainger', 'Screwdriver', 'A screwdriver is a tool, manual or powered, 
used for driving screws. A typical simple screwdriver has a handle and a shaft, 
ending in a tip the user puts into the screw head before turning the handle.');