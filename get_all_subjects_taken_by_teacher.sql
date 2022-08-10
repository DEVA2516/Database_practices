--4) ...............all subjects taken by malar......................

select teach.name,group_concat(sub.name) as subjects
from teachers teach
join teacher_subject_mapping tsm
on teach.id = tsm.id
join subjects sub
on tsm.sub_id = sub.id
where teach.name like '%malar%'
group by teach.name; 