-- 6) get 3rd term mark of stalin in chemistry -----------------------------------

select st.name as student,sub.name as subject,stsm.mark as Mark
from student st
join student_term_subject_mark_mapping stsm
on st.id =  stsm.stu_id
join term t 
on stsm.term_id = t.id
join subjects sub
on stsm.sub_id = sub.id
where t.id = 3 && sub.id = 5 && st.id = 2;