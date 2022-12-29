Types of window function

select dept_id,LISTAGG(name,',') WITHIN GROUP (ORDER BY name DESC) from employee group by dept_id;

select x.name,d.name,x.salary from (
select e.*,
rank() over(partition by e.dept_id order by salary desc ) as rnk
from employee e ) x full join department d on x.dept_id= d.id
where x.rnk < 2;


select * from employee order by dept_id ; --columns [id,name,salary,dept_id]
select * from department ; --columns [id,name]
-----------------Print depatment id haivng more than two employees in each department ----------
select  employee.dept_id,count(*) from employee group by dept_id having count(*)>2;
-----------------Print depatment name haivng more than two employees in each department ----------
select  d.name,count(*) from employee e full join department d 
on e.dept_id=d.id group by d.name having count(*)>2 ;
----Pritnt department id which have max salarary
select  employee.dept_id,max(salary) from employee group by dept_id ;
-------------Print deparment name which have max salary ---------------
select d.name, max(e.salary) as max_sal 
from employee e full join department d on  e.dept_id = d.id 
group by d.name;

-------------Print employee name with deparment name which have max salary on each department---------------
select d.id,e.name,d.name, max(e.salary) as max_sal 
from employee e full join department d on  e.dept_id = d.id 
group by d.id, d.name,e.name  ;

----------------------------------------Above is wrong---so solve using windows function----OR Using subquery in next sql file----------------------------------------------------------------

-----------------------windows function--------------------------------

select e.*, max(salary)   as max_sal from employee e order by dept_id ; --error but if use with wondows it works

select e.*, max(salary) over() as max_sal from employee e order by dept_id ;

---But giving more number of records
select e.*, max(salary) over(partition by dept_id) as max_sal from employee e order by dept_id ;

---Each windows giving more number of records based on department
select e.*, row_number() over(partition by dept_id order by id) as rn from employee e ;

--Fetch the first 2 employees from each department to join the company
select * from  (
select e.*, row_number() over(partition by dept_id order by id) as rn from employee e 
) x where x.rn < 3;


---Fetch the top 3 employees in each department earning the max salary----------------------------

select e.* , row_number() over (partition by dept_id order by dept_id,salary desc) as rn from employee e;

--wrong not works so use rank windows function

select * from (
select e.*,
rank() over(partition by e.dept_id order by salary desc ) as rnk
from employee e ) x 
where x.rnk < 2;

--insert into employee values(7150,'SunikK',400000,'VPATTNAM',760,3);


---Print Department's name, employee name(having max salary in each department) and his/her salary
select d.name,x.name,x.salary from (
select e.*,
rank() over(partition by e.dept_id order by salary desc ) as rnk
from employee e ) x full join department d on x.dept_id= d.id
where x.rnk < 2;

--------------fertch a query to display if the salary if an employee is higher, lower or equal to the previous employee.----

select e.*,
lag(salary) over(partition by dept_id order by id ) as pre_emp_salary, --repvious record
lead(salary) over(partition by dept_id order by id ) as next_emp_salary  -- next record salary
from employee e;

------------------------------------------------------------------------------



