-- 21) get stalin class mates list --------------  

select st.name as students , c.id as class
from student st
join student_class_mapping scm
on st.id = scm.stu_id
join class c
on scm.class_id = c.id
where c.id in(
select c.id 
from student st
join student_class_mapping scm
on st.id = scm.stu_id
join class c
on scm.class_id = c.id
where stu_id = 2 );