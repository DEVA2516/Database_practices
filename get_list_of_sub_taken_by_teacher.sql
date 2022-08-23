-- 12) get the list of subjects taken by murali -----------------------------------

select teach.name as teacher, sub.name as subjects
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.teach_id
join subjects sub 
on tsm.sub_id = sub.id
where teach.id = 1;