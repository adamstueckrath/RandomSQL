INSERT INTO `employees` (`employee_id`, `department_id`, `boss_id`, `name`, `salary`)
VALUES
  (1,1,0,'manager','80000'),
  (2,1,1,'emp1','60000'),
	(3,1,1,'emp2','50000'),
	(4,1,1,'emp3','95000'),
	(5,1,1,'emp4','75000'),
	(6,2,1,'emp5','100000'),
	(7,3,1,'emp6','40000');
 
INSERT INTO `departments` (`department_id`, `name`)
VALUES
	(1,'IT'),
	(2,'HR'),
	(3,'Sales'),
	(4,'Marketing');
