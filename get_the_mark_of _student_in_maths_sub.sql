-- 15) get the mark of stalin in maths --------------------------

select st.name,sub.name as subject, stsm.mark as mark
from student st
join student_term_subject_mark_mapping stsm
on st.id = stsm.stu_id
join subjects sub
on stsm.sub_id = sub.id 
where st.id = 5 && sub.id = 3;
