-- ------------11) list of subjects taken for 10 std with teachers list----------------------------


select group_concat(sub.name) as subjects,teach.name as teachers
from teachers teach 
join teacher_class_mapping tcm
on teach.id = tcm.teach_id
join class c
on tcm.class_id = c.id
join teacher_subject_mapping tsm
on teach.id = tsm.teach_id
join subjects sub
on tsm.sub_id = sub.id
where c.id = 2
group by teach.name;
