select st.name, sub.subject_name, m.marks
from students st, subjects sub, marks m
where st.student_id=m.student_id
and sub.subject_id=m.subject_id;

select st.name, AVG(m.marks) as avg_marks
from students st
join marks m on st.student_id=m.student_id
group by st.name;

select st.name, SUM(m.marks) as total_marks
from students st
join marks m on st.student_id=m.student_id
group by st.name
order by total_marks desc;

select sub.subject_name, AVG(m.marks) as avg_marks
from subjects sub
join marks m on sub.subject_id=m.subject_id
group by sub.subject_name
order by avg_marks desc;