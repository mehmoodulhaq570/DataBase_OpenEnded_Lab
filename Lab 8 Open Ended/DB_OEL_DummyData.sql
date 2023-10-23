INSERT INTO Students ( StudentID, RegNo, SName, Contact ,Email)
VALUES
    (1, '2021-ce-35', 'Mehmood', '123-456-7890', 'mehmood.doe@example.com'),
    (2,'2021-ce-41','Shahazaib', '987-654-3210', 'shahzaib.smith@example.com');

INSERT INTO StudentResult ( StudentID, EvaluationDate)
VALUES
    (1, '10-9-2004'),
    (2,'14-9-2008');

INSERT INTO StudentAttendence ( AttendenceID,StudentID, AttndenceStatus)
VALUES
    (1, 1, 'Present'),
    (2, 2, 'Absent');

INSERT INTO ClassAttendence ( AttendenceID, AttendenceDate)
VALUES
    (1, '20-10-2023'),
    (2, '20-12-2009');


INSERT INTO CLOs (CLOID, CLOName, DateCreated, DateUpdated)
VALUES
    (1, 'Understand fundamental principles of programming', '12-4-2003','12-4-2005'),
    (2, 'Apply problem-solving skills in software development','12-4-2004','12-4-2015');


INSERT INTO Rubrics (RubricID, Detail, CLOID)
VALUES
    (1, 'Code Quality', 1),
    (2, 'Problem-solving',2);

INSERT INTO Assessments (AssessmentID, Title, DateCreated, TotalMarks, TotalWeightage)
VALUES
    (1, 'Code Review',  '12-4-2003', '1100', '50'),
    (2, 'Problem Solving Test', '12-4-2013', '1100', '40');

INSERT INTO AssessmentComponents( AssessmentComponentID,AssessmentID, CName, RubricID, TotalMarks, DateCreated, DateUpdated)
VALUES
    (1,1, 'Data Design', 1, 1100, '20-12-2009','20-12-2023'),
    (2,2, 'Data Insertion', 2, 1100, '20-12-2010','20-9-2023');


INSERT INTO RubricLevels (RubricLevelID, Details, RubricID,  MeasurementLevel)
VALUES
    (1,'Excellent', 1, 5),
    (2, 'Good', 1, 4),
    (3, 'Satisfactory',1,  3),
    (4, 'Advanced', 2,  4),
    (5, 'Intermediate', 2, 3),
    (6,'Basic', 2,  2);

INSERT INTO StudentEvaluations (EvaluationID, StudentID, AssessmentID, RubricLevelID, EvaluationDate, Score, Comments)
VALUES
    (1, 1, 1, 1, '2023-01-15', 95, 'Great job!'),
    (2, 2, 2, 4, '2023-02-20', 80, 'Good effort');INSERT INTO Students ( StudentID, RegNo, SName, Contact ,Email)
VALUES
    (1, '2021-ce-35', 'Mehmood', '123-456-7890', 'mehmood.doe@example.com'),
    (2,'2021-ce-41','Shahazaib', '987-654-3210', 'shahzaib.smith@example.com');

INSERT INTO CLOs (CLOID, CLOName, DateCreated, DateUpdated)
VALUES
    (1, 'Understand fundamental principles of programming', '12-4-2003','12-4-2005'),
    (2, 'Apply problem-solving skills in software development','12-4-2004','12-4-2015');

INSERT INTO Rubrics (RubricID, Detail, CLOID)
VALUES
    (1, 'Code Quality', 1),
    (2, 'Problem-solving',2);

INSERT INTO Assessments (AssessmentID, Title, DateCreated, TotalMarks, TotalWeightage)
VALUES
    (1, 'Code Review',  '12-4-2003', '1100', '50'),
    (2, 'Problem Solving Test', '12-4-2013', '1100', '40');

	INSERT INTO RubricLevels (RubricLevelID, Details, RubricID,  MeasurementLevel)
VALUES
    (1,'Excellent', 1, 5),
    (2, 'Good', 1, 4),
    (3, 'Satisfactory',1,  3),
    (4, 'Advanced', 2,  4),
    (5, 'Intermediate', 2, 3),
    (6,'Basic', 2,  2);

INSERT INTO StudentEvaluations (EvaluationID, StudentID, AssessmentID, AssessmentComponentID, RubricLevelID, EvaluationDate, Score, Comments)
VALUES
    (1, 1, 1, 1, 1, '2023-01-15', 95, 'Great job!'),
    (2, 2, 2, 1, 4, '2023-02-20', 80, 'Good effort');