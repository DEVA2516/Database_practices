-- 3) get the list of who took more than 50 marks in maths -----------------

select st.name, stsm.mark ,sub.name as subject
from student st
join student_term_subject_mark_mapping stsm
on st.id = stsm.stu_id
join subjects sub
on stsm.sub_id = sub.id
where sub.id = 3 && stsm.mark >= 50;
