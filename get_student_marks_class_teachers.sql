-- 17) get sakthi 3rd term marks,class,and the teachers,who taken for class

select st.name as student,stsm.mark,c.name,teach.name-- teach.name as teachers
from student st
join student_term_subject_mark_mapping stsm
on st.id = stsm.stu_id
join term t
on stsm.term_id = t.id
join student_class_mapping scm
on st.id = scm.stu_id
join class c
on scm.class_id = c.id
join subjects sub
on stsm.sub_id = sub.id
join teacher_subject_mapping tcm
on sub.id = tcm.sub_id
join teachers teach
on tcm.teach_id = teach.id
where t.id = 3 && st.id = 1;
