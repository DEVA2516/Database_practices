 -- 6) .................count of student whos's malar teacher student......................................

select teach.name as teacher,count(st.name) as no_of_students
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.teach_id
join student_subject_mapping ssm
on tsm.sub_id = ssm.sub_id
join student st
on ssm.stu_id = st.id
where teach.name like '%malar%'
