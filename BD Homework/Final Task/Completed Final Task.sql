INSERT INTO locations (street_address, postal_code, city, state_province,country_id)
SELECT distinct
    lc.street_address,
    lc.postal_code,
    lc.city,
    lc.state_province,
    lc.country_id
FROM report lc
where lc.street_address is not null
AND   lc.postal_code is not null
AND   lc.city is not null 
AND   lc.state_province is not null
AND    lc.country_id is not null;


INSERT INTO departments (department_name,manager_id,location_id)
SELECT distinct
    re.DEPARTMENT_NAME as department_name,
    null as manager_id,
    lc.location_id
FROM report re left join locations lc using(city)
where department_name is not null;


insert into employees( first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct,manager_id, department_id)
select distinct 
			re.FIRST_NAME,
			re.LAST_NAME,
			re.EMAIL,
			re.PHONE_NUMBER,
			re.HIRE_DATE,
			re.JOB_ID,
			re.SALARY,
			re.COMMISSION_PCT,
			null as manager_id,
			de.department_id
FROM report re left join departments de using(department_name)
WHERE
re.FIRST_NAME is not null
AND re.LAST_NAME is not null
AND re.PHONE_NUMBER is not null
AND re.HIRE_DATE is not null
AND re.JOB_ID is not null
AND re.SALARY is not null;


update employees e
INNER JOIN  (
select distinct FIRST_NAME, LAST_NAME, (select employee_id from employees e where r.MANAGER_FIRST_NAME=e.first_name AND r.MANAGER_LAST_NAME = e.last_name) as manager_id
from report r) as t on e.first_name=t.FIRST_NAME and e.last_name=t.LAST_NAME
SET e.manager_id=t.manager_id;


update departments d
INNER JOIN
 (select distinct DEPARTMENT_NAME, (select employee_id from employees e where r.DEPARTMENT_MANAGER_FIRST_NAME=e.first_name AND r.DEPARTMENT_MANAGER_LAST_NAME = e.last_name) as manager_id
	from report r
	where DEPARTMENT_NAME is not null) as t
 using(department_name)
SET d.manager_id=t.manager_id;


Update employees
Set salary=salary+100
WHERE job_id  NOT IN (select job_id FROM jobs WHERE job_title LIKE '%Manager');


update employees
set email=concat(SUBSTRING(first_name,1,5),SUBSTRING(last_name,1,5));


update employees
set salary=salary*1.1
where department_id in (select department_id from(select department_id,count(department_id) as numb from employees group by department_id) as countTable
where numb>10);