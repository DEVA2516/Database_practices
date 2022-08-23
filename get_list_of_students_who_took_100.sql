-- 13) get the list of students who got 100 in maths --------------------------------

select st.name as student,stsm.mark as mark
from student st
join student_term_subject_mark_mapping stsm
on st.id = stsm.stu_id
join subjects sub
on stsm.sub_id = sub.id
where sub.id = 3 && stsm.mark = 100;