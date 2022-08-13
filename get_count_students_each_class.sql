-- -------------------12) count of students_each_class---------------------------------------

select count(st.name) as no_of_students , c.name as class 
from student st
join student_class_mapping scm
on st.id = scm.stu_id
join class c
on scm.class_id = c.id
group by c.name;