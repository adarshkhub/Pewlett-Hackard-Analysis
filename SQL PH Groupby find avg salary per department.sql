select s.emp_no, s.salary, d.department_name, e.dept_no 
from salaries as s, 
departments as d,
dept_emp as e
where s.emp_no = e.emp_no 
and e.dept_no = d.dept_no

-- Find the average salary per department using the groupby function

select * from tempemployeedeptsalary

select dept_name, sum(salary)
from tempemployeedeptsalary
Group By dept_name;


-- Triple join
SELECT dept_emp.emp_no, dept_emp.dept_no, departments.dept_name,salaries.salary
FROM dept_emp
INNER JOIN salaries
ON dept_emp.emp_no = salaries.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no




