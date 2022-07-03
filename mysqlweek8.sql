1. select t.title as "Title", count(*) as "Number of Employees" from employees e 
	inner join titles t on t.emp_no = e.emp_no 
	where e.birth_date >= '1965-01-01'	
	group by t.title;
	



2. select t.title as "Title", avg(s.salary) as "Average Salary" from titles t
	inner join salaries s
	on t.emp_no = s.emp_no
	group by t.title;


3. select sum(s.salary), d.dept_name from salaries s
	inner join dept_emp de on de.emp_no = s.emp_no
	inner join departments d on d.dept_no = de.dept_no
	where de.from_date >= '1990-01-01' and de.to_date <= '1992-12-31' and d.dept_name = 'Marketing';
