-- 7)................get all teacher with their subjects and to corresponding class..........................

select teach.id,teach.name as teachers, sub.name as subjects , c.name as class
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.teach_id
join subjects sub
on tsm.sub_id = sub.id
join teacher_class_mapping tcm
on teach.id = tcm.teach_id
join class c
on tcm.class_id = c.id;

-- ...........................group_concat method.............................................

select teach.name as teachers, group_concat(sub.name) as subjects , group_concat(c.name) as class
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.teach_id
join subjects sub
on tsm.sub_id = sub.id
join teacher_class_mapping tcm
on teach.id = tcm.teach_id
join class c
on tcm.class_id = c.id
group by teach.name;
