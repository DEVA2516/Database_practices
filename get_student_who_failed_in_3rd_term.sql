-- 5) ..............list student of who failed in 3rd term of malar teacher subject......................

select teach.name as teacher ,te.name as term_name ,sub.name as subject,st.name as student ,stsm.mark
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.teach_id
join student_term_subject_mark_mapping stsm
on tsm.sub_id = stsm.sub_id
join subjects sub 
on stsm.sub_id = sub.id
join term te
on stsm.term_id = te.id 
join student st
on stsm.stu_id = st.id
where teach.name like "%malar%" && te.id = 3 && stsm.mark < 40;