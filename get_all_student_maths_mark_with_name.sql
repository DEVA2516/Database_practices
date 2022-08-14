-- 25) get all student maths mark with name list --------------------

select st.name as students, sub.name as subject,group_concat(stsm.mark) as mark
from student st 
join student_term_subject_mark_mapping stsm
on st.id = stsm.stu_id
join subjects sub
on stsm.sub_id = sub.id
where sub.id = 3
group by st.name;