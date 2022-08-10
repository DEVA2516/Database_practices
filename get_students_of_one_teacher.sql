-- 1) ............get all students of malar teacher............

select st.name ,teach.name as teacher
from teachers teach 
join teacher_subject_mapping tsm 
on teach.id = tsm.teach_id
join student_subject_mapping ssm
on tsm.sub_id = ssm.sub_id
join student st
on ssm.stu_id = st.id
where teach.name like '%malar%';

------------------------- group concat method -----------------------------------

select teach.name,group_concat(st.name) as stu_names
from teachers teach 
join teacher_subject_mapping tsm 
on teach.id = tsm.teach_id
join student_subject_mapping ssm
on tsm.sub_id = ssm.sub_id
join student st
on ssm.stu_id = st.id
where teach.name like '%malar%'
group by teach.name;