-- 22) get students of 11 std ----------

select group_concat(st.name) as students, c.name as class
from student st
join student_class_mapping scm
on st.id = scm.stu_id
join class c
on scm.class_id = c.id 
where c.id = 3;
