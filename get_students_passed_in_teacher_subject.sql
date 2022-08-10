-- 2) ............get all students who passed in malar teacher subject..............

select st.id,st.name,stsm.term_id,teach.name,stsm.mark as marks
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.id
join student_term_subject_mark_mapping stsm
on tsm.sub_id = stsm.sub_id
join student st
on stsm.stu_id = st.id 
where teach.name like '%malar%' && stsm.mark > 40;

----------------------group concat method -----------------------------------------

select teach.name,group_concat(st.name) as stu_names -- stsm.mark as marks
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.id
join student_term_subject_mark_mapping stsm
on tsm.sub_id = stsm.sub_id
join student st
on stsm.stu_id = st.id 
where teach.name like '%malar%' && stsm.mark > 40
group by teach.name;
*/
