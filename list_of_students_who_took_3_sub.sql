-- 4) list of students who take 3 subjects

select st.name as students, count(sub.name) as subjects 
from student st
join student_subject_mapping ssm
on st.id = ssm.stu_id
join subjects sub
on ssm.sub_id = sub.id
group by st.name 
having count(sub.name)=3;
