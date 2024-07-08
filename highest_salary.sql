-- Salary
-- emp_id
-- emp_name


-- Departmemt 
-- emp_id
-- dept_id
-- salary

Get the higest salary employee in every department

  with dpt_maxsal as (
select
dept_id,max(salary) as mxsal
from
department
group by dept_id)

select 
  emp_name
  from salary
  where emp_id in (
select 
emp_id
from 
Departmemt,dpt_maxsal
where
Departmemt.salary = dpt_maxsal.mxsal
and Departmemt.dept_id = dpt_maxsal.dept_id)


