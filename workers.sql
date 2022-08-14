/* The following data definition defines an organization's employee hierarchy.

An employee is a manager if any other employee has their managerId set to this employee's id. That means John is a manager if at least one other employee has their managerId set to John's id.

TABLE employees
  id INTEGER NOT NULL PRIMARY KEY
  managerId INTEGER
  name VARCHAR(30) NOT NULL
  FOREIGN KEY (managerId) REFERENCES employees(id)
Write a query that selects only the names of employees who are not managers.

only one catch : you have to take care of the null values in managerID column for employees who are not managers
*/

select name from employees where id not in (select distinct managerId from employees where managerId is not null);
