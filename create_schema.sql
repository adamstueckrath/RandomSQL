CREATE TABLE `employees` (
  `employee_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `boss_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
);
 
CREATE TABLE `departments` (
  `department_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
);
