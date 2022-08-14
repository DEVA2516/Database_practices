-- ---- 16) Get malar teacher students --------------------------

select teach.name as teacher,count(st.name) as no_of_students
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.teach_id
join subjects sub
on tsm.sub_id = sub.id
join student_subject_mapping ssm
on sub.id = ssm.sub_id
join student st
on ssm.stu_id = st.id
where teach.name like '%malar%'
group by teach.name;