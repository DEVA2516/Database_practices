-- 19) list all subjects and teachers -----------------------

select sub.name as subjects,group_concat(teach.name) as teachers
from teachers teach
join teacher_subject_mapping tsm 
on teach.id = tsm.teach_id
join subjects sub
on tsm.sub_id = sub.id
group by sub.name;
