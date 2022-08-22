-- 1) get count_of_students in class 5th --------------------

select count(st.name) as no_of_students,c.name as class
from student st
join student_class_mapping scm
on st.id = scm.stu_id
join class c
on c.id = scm.class_id 
where c.id = 5;
