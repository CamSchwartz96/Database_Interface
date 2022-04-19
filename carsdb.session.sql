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