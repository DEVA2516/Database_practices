
-- 24) get goutham teacher list------------------------------------

select st.name as student, group_concat(teach.name) as teachers
from student st
join student_subject_mapping ssm
on st.id = ssm.stu_id
join subjects sub
on ssm.sub_id = sub.id
join teacher_subject_mapping tsm
on sub.id =tsm.sub_id
join teachers teach 
on tsm.teach_id = teach.id
where st.id = 8;
