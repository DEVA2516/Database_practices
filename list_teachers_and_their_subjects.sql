--..........list of all teachers & and their subjets ....................

select teach.id,teach.name,group_concat(sub.name) as subjects
from teachers teach
join teacher_subject_mapping tsm
on teach.id =  tsm.teach_id
join  subjects as sub
on tsm.sub_id = sub.id
group by (teach.id);
