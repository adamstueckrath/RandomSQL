# sql
Sample SQL Queries

## Answers
 
### List employees (names) who have a bigger salary than their boss

```sql
SELECT e.name AS 'Employee Name', e2.name AS 'Boss', 
e.salary AS 'Employee salary', e2.salary AS 'Boss salary'
FROM employees e
JOIN employees e2 ON e.boss_id = e2.employee_id
WHERE e2.salary < e.salary;
```

### List employees who have the biggest salary IN their departments

```sql
SELECT e.name AS 'Employee Name', d.Name AS 'Department', e.Salary AS 'Salary'
FROM departments d JOIN employees e 
ON e.department_id = d.department_id
GROUP BY d.department_id
ORDER BY e.salary DESC
```

### List departments that have less than 3 people IN it

```sql
SELECT d.Name AS 'Department'
FROM departments d JOIN employees e 
ON e.department_id = d.Department_id
GROUP BY d.department_id
HAVING COUNT(e.employee_id) < 3
```

### List ALL departments along WITH the NUMBER OF people there (tricky - people often do an "inner join" leaving OUT empty departments)

```sql
SELECT d.name AS 'Department', COUNT(e.employee_id) AS '# of Employees'
FROM departments d LEFT OUTER JOIN employees e 
ON e.department_id = d.department_id
GROUP BY d.Department_id
```

### List employees that don't have a boss in the same department

```sql
SELECT e.name AS 'Employee Name', e2.name AS 'Boss', d.name AS "Employee's Department", d2.name AS "Boss' Department"
FROM employees e
JOIN employees e2 ON e.boss_id = e2.employee_id
JOIN departments d ON e.department_id = d.department_id
JOIN departments d2 ON e2.department_id = d2.department_id
WHERE e.boss_id != 0 
AND d.department_id != d2.department_id
```

### List _all_ departments along with the total salary there

```sql
SELECT d.name AS 'Department', SUM(e.salary) AS 'Total Salary'
FROM departments d LEFT OUTER JOIN employees e 
ON d.department_id = e.department_id
GROUP BY d.department_id
```
