-- 7) get list of failed students --------------------

select st.name as student,stsm.mark
from student st
join student_term_subject_mark_mapping stsm
on st.id =  stsm.stu_id
where stsm.mark < 35; 