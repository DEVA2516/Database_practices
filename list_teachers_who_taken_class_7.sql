-- ------------------10) list of teachers who taken class for 7th std-------------------------

select c.name as class,group_concat(teach.name) as teachers
from teachers teach
join teacher_class_mapping tsm
on teach.id = tsm.teach_id
join class c
on tsm.class_id = c.id
where c.id = 7
group by c.id;


select c.name as class , group_concat(teach.name) as teachers
from class c
join teacher_class_mapping tsm
on c.id = tsm.class_id
join teachers teach 
on tsm.teach_id = teach.id
where c.id = 7;