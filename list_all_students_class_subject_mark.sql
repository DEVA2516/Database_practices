
-- 20) get all students with their class,subjects,mark,teachers

select st.name as students, c.name as class, sub.name as subjects, stsm.mark as mark, teach.name as teachers
from student st 
join student_class_mapping scm 
on st.id = scm.stu_id
join class c 
on scm.class_id = c.id
join student_term_subject_mark_mapping stsm 
on st.id = stsm.stu_id
join subjects sub  
on stsm.sub_id = sub.id
join teacher_subject_mapping tsm 
on sub.id = tsm.sub_id
join teachers teach 
on tsm.teach_id = teach.id;
