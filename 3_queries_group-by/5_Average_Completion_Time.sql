SELECT students.name as students_name, avg(assignment_submissions.duration) as assignment_submissions_duration, avg(assignments.duration) as average_estimated_duration
FROM student
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;