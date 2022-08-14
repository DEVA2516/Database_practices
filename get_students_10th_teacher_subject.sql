-- 18) get students of 10th std with their teachers and coresponding subjects....................

select st.name as students ,group_concat( teach.name) as teachers ,group_concat( sub.name) as subjects
from student st
join student_subject_mapping ssm
on st.id = ssm.stu_id
join subjects sub
on ssm.sub_id = sub.id
join teacher_subject_mapping tsm
on sub.id = tsm.sub_id
join teachers teach 
on tsm.teach_id = teach.id
join student_class_mapping scm
on st.id = scm.stu_id
join class c
on scm.class_id = c.id
where c.id =  2
group by st.name;