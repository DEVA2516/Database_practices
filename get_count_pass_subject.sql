-- 10) get the total pass count of all subjects --------------------------

select count(stsm.mark) as no_of_pass_subjects
from student_term_subject_mark_mapping stsm
join subjects sub
on stsm.sub_id = sub.id
where stsm.mark > 35;