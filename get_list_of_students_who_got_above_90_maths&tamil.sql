-- 14) get the list of students who got above 90 in both maths & tamil -------------------------------------

select  st.name as students,stsm.sub_id,sub.name as subjects,stsm.mark as mark 
from student st
join student_term_subject_mark_mapping stsm
on st.id = stsm.stu_id
join subjects sub
on stsm.sub_id = sub.id
where (sub.id = 1 || sub.id = 3) && stsm.mark >= 90;
