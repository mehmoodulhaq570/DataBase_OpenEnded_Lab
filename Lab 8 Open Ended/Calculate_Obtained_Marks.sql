-- obtained marks = (student rubric level / max(rubric level) ) * component marks
WITH temp_table(a, b, c, d, tmp) as (SELECT reg_no, course_code, evaluation_descr, component, CAST(StudentRubricLevel as FLOAT) / CAST ((
		SELECT MAX(lvl) as max_lvl
		FROM rubric_lvl
		WHERE course_code = course_code AND clo_num = clo_num AND rubric_type = rubric_type
) as float)*component_marks as tmp
FROM Assessment)

UPDATE Assessment
SET Assessment.obtained_marks = temp_table.tmp
FROM Assessment
	INNER JOIN temp_table
	on reg_no = a AND course_code = b AND evaluation_descr = c AND component = d
