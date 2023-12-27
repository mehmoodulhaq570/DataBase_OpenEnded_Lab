# DataBase_OpenEnded_Lab

Open Ended Lab Description:
CASE STUDY:
Department of Computer Engineering UET Lahore follows the Outcome Based Education where each subject is 
mapped with multiple CLOs. For the Lab work, these CLOs are further mapped to multiple rubrics. Rubrics are 
the rules that measure the students at different levels in particular component of an assessment. 

# University Management System Database Schema

This repository contains the SQL code for creating the database schema of a University Management System. The schema is designed to manage student information, attendance, assessment components, and evaluations.

## Tables:

1. **Students:**
   - Student information including ID, registration number, name, contact, and email.

2. **StudentAttendance:**
   - Records student attendance with a foreign key reference to the Students table.

3. **ClassAttendance:**
   - Records class attendance with a foreign key reference to StudentAttendance.

4. **CLOs (Course Learning Outcomes):**
   - Defines Course Learning Outcomes with creation and update dates.

5. **Rubrics:**
   - Defines rubrics with details and a foreign key reference to CLOs.

6. **RubricLevels:**
   - Defines rubric levels with details, a foreign key reference to Rubrics, and measurement level.

7. **Assessments:**
   - Records assessments with a title, creation date, total marks, and total weightage.

8. **AssessmentComponents:**
   - Records assessment components with a foreign key reference to Assessments and Rubrics.

9. **StudentResult:**
   - Records student results with a foreign key reference to Students.

10. **StudentEvaluations:**
    - Records student evaluations with details including assessment and rubric level.

## Usage:
- Use this SQL script to create the database schema for a University Management System.

## Contributing:
- Contributions are welcome! Feel free to fork the repository, make changes, and submit a pull request.

## License:
This project is licensed under the [MIT License](LICENSE).

