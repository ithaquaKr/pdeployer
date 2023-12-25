-- Create the database
CREATE DATABASE student_information;

-- Connect to the database
\c student_information;

-- Create the students table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender CHAR(1) NOT NULL,
    grade_level INT NOT NULL
);

-- Insert sample data into the students table
INSERT INTO students (first_name, last_name, age, gender, grade_level) VALUES
('John', 'Doe', 18, 'M', 12),
('Jane', 'Smith', 17, 'F', 11),
('Tom', 'Brown', 16, 'M', 10),
('Emily', 'Johnson', 18, 'F', 12);

-- Create the courses table
CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    credits INT NOT NULL
);

-- Insert sample data into the courses table
INSERT INTO courses (course_name, department, credits) VALUES
('Calculus I', 'Mathematics', 4),
('English Composition I', 'English', 3),
('Biology I', 'Science', 4),
('History of the United States', 'History', 3);

-- Create the enrollments table
CREATE TABLE enrollments (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    grade VARCHAR(2)
);

-- Insert sample data into the enrollments table
INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 3, 'A'),
(2, 4, 'B'),
(3, 1, 'C'),
(3, 3, 'D'),
(4, 2, 'A'),
(4, 4, 'A');
