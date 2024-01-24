-- CREATE TABLE Teachers (
--     teacher_id SERIAL PRIMARY KEY,
--     employmentDate DATE NOT NULL CHECK (employmentDate > '1990-01-01'),
--     isAssistant BOOLEAN NOT NULL DEFAULT false,
--     isProfessor BOOLEAN NOT NULL DEFAULT false,
--     teacher_name VARCHAR(50) NOT NULL CHECK (teacher_name <> ''),
--     teacher_position VARCHAR(50) NOT NULL CHECK (teacher_position <> ''),
--     premium INT NOT NULL DEFAULT 0 CHECK (premium >= 0),
--     salary INT NOT NULL CHECK (salary > 0),
--     surname VARCHAR(50) NOT NULL CHECK (surname <> '')
-- );

-- INSERT INTO Teachers (employmentDate, isAssistant, isProfessor, teacher_name, teacher_position, premium, salary, surname)
-- VALUES 
--     ('1990-05-15', true, false, 'John', 'Assistant Professor', 500, 60000, 'Doe'),
--     ('1995-08-20', false, true, 'Jane', 'Professor', 1000, 80000, 'Smith'),
--     ('2000-03-10', true, false, 'Bob', 'Assistant Professor', 300, 45000, 'Johnson');

-- SELECT * FROM Teachers

-- CREATE TABLE St_Groups(
-- 	group_id SERIAL PRIMARY KEY,
-- 	gr_name VARCHAR(10) NOT NULL UNIQUE CHECK(gr_name != ''),
-- 	rating INT NOT NULL CHECK(rating >= 0 AND rating <= 5),
-- 	gr_year INT NOT NULL CHECK(gr_year >= 1 AND gr_year <= 5)
-- )

-- INSERT INTO St_Groups(
-- 	gr_name,
-- 	rating,
-- 	gr_year
-- )
-- VALUES
--     ('GroupA', 4, 2),
--     ('GroupB', 3, 3),
--     ('GroupC', 5, 1);

-- CREATE TABLE Faculties(
-- 	faculty_id SERIAL PRIMARY KEY,
-- 	dean VARCHAR(255) NOT NULL CHECK(dean <> ''),
-- 	faculty_name VARCHAR(100) NOT NULL UNIQUE CHECK(faculty_name <> '')
-- )

-- INSERT INTO Faculties(
-- 	dean,
-- 	faculty_name
-- )

-- VALUES
--     ('Dr. Smith', 'Engineering'),
--     ('Prof. Johnson', 'Science'),
--     ('Dr. Anderson', 'Business');

-- CREATE TABLE Departments(
-- 	dep_id SERIAL PRIMARY KEY,
-- 	financing INT NOT NULL DEFAULT 0 CHECK(financing >= 0),
-- 	dep_name VARCHAR(100) NOT NULL UNIQUE CHECK(dep_name <> '')
-- )

-- INSERT INTO Departments(
-- 	financing,
-- 	dep_name
-- )

-- VALUES
--     (500000, 'Computer Science'),
--     (700000, 'Electrical Engineering'),
--     (300000, 'Mathematics'); 

-- SELECT dep_name, financing FROM Departments

-- SELECT gr_name AS group, rating AS Rating
-- FROM St_Groups

-- SELECT CAST(premium AS FLOAT) AS float_column
-- FROM Teachers

-- premium / salary * 100

-- SELECT surname AS Surname, CAST(salary / premium * 100 AS FLOAT) AS Procent, (salary + premium) / salary * 100 AS Some
-- FROM Teachers

-- SELECT CONCAT('The dean of faculty ', faculty_name, ' is ', dean)
-- FROM Faculties

-- SELECT surname FROM Teachers
-- WHERE salary > 1050

-- SELECT dep_name FROM Departments
-- WHERE financing < 11000 OR financing > 25000

-- SELECT dep_name FROM Departments
-- WHERE dep_name <> 'Computer Science'

-- SELECT surname, teacher_position FROM Teachers
-- WHERE isProfessor = false

-- SELECT surname, teacher_position, salary, premium FROM Teachers
-- WHERE isAssistant = true AND premium >= 160 AND premium <= 550

-- SELECT surname, salary FROM Teachers
-- WHERE isAssistant = true

-- SELECT surname, teacher_position FROM Teachers
-- WHERE employmentDate <= '2000-01-01'

-- SELECT dep_name AS "Name of Department" FROM Departments
-- WHERE dep_name < 'Software Development'
-- ORDER BY dep_name

-- SELECT surname FROM Teachers
-- WHERE isAssistant = true AND salary + premium <= 1200

-- SELECT gr_name FROM St_Groups
-- WHERE gr_year = 5 AND rating >= 2 AND rating <= 4

-- SELECT surname FROM Teachers
-- WHERE isAssistant = true AND salary < 550 OR premium < 200
