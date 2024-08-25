select * from teacher

1)---count---

select count (distinct teacherid) from teacher

select count (distinct schoolid ) from teacher

2)---total sum of each teacher whose school_id is (1,2)

select * from teacher order by schoolid 
	
   select schoolid, sum(teacherid) from teacher
   where schoolid in (1,2)
   group by schoolid

3)---total no. of teacher whose school_id is less than 5 

	select * from teacher as t

select t.teacherid , t.schoolid from teacher as t

select t.teacherid from teacher as t

	select count (*)  from teacher
	where schoolid >5

	

4)---to find out total no. teacher whose last name is "jain"

	select lastname from teacher
select count(lastname) from teacher
	where lastname = 'jain' 
	
5)---max schoolid 

select schoolid from teacher
	
 select firstname , max(schoolid) as max_id from teacher 
 group by firstname 

6)---min teacherid

select teacherid from teacher
	
 select lastname  , min(teacherid) as min_id from teacher 
 where lastname='guru'
	group by lastname

7)---teachers whose school_id is 3

select teacherid , sum(schoolid ) from teacher
	where schoolid =3
group by teacherid 

8)---limit

select teacherid from teacher
select sum (schoolid) from teacher teacherid ,
order by sum (schoolid) desc limit 1

9)---having
	
select firstname, sum (teacherid ) from teacher
group by firstname having sum (teacherid) >50

10)---case
	
select * from teacher

select firstname , lastname , schoolid ,
case 
    when schoolid<=3 then 'fresher'
    when schoolid<=6 then 'experienced'  
    when schoolid<=10 then 'well_experienced'
    else 'retired'
end as "experience_category"
from teacher
    
