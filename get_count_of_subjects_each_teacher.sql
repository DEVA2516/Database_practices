select teach.name as teacher, count(sub.name) as count_of_subjects
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.teach_id
join subjects sub
on tsm.sub_id = sub.id 
group by teach.name;