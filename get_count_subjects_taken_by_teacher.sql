-- 16) get the count of subjects taken by malar------------------

select teach.name as teacher,count(sub.name) as no_of_subjects
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.teach_id
join subjects sub
on tsm.sub_id = sub.id
where teach.id = 2;