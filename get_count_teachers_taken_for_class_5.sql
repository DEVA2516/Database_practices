-- ----- 13) count of teachers in each class -------------------- 

select count(teach.name) as no_of_teachers , c.name as class
from teachers teach 
join teacher_class_mapping tcm
on teach.id = tcm.teach_id
join class c
on tcm.class_id = c.id
where c.id = 5;

-- group by c.name