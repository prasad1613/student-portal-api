-- Create the users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL CHECK (role IN ('admin', 'student')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the students table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Male', 'Female', 'Other')),
    address TEXT,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

-- Create the marks table
CREATE TABLE marks (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
    class_name VARCHAR(10) NOT NULL CHECK (class_name IN ('6', '7', '8', '9', '10')),
    subject VARCHAR(50) CHECK (subject IN ('Telugu', 'Maths', 'English', 'Science', 'Social', 'Hindi')),
    mid_exam_marks INTEGER CHECK (mid_exam_marks >= 0 AND mid_exam_marks <= 100),
    unit_exam_marks INTEGER CHECK (unit_exam_marks >= 0 AND unit_exam_marks <= 100),
    half_yearly_marks INTEGER CHECK (half_yearly_marks >= 0 AND half_yearly_marks <= 100),
    quarterly_marks INTEGER CHECK (quarterly_marks >= 0 AND quarterly_marks <= 100),
    annual_marks INTEGER CHECK (annual_marks >= 0 AND annual_marks <= 100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the exams table
CREATE TABLE exams (
    id SERIAL PRIMARY KEY,
    exam_name VARCHAR(50) CHECK (exam_name IN ('Mid', 'Unit 1', 'Unit 2', 'Half Yearly', 'Quarterly', 'Annually')),
    class_name VARCHAR(10) CHECK (class_name IN ('6', '7', '8', '9', '10')),
    exam_date DATE
);

-- Insert sample exam records
INSERT INTO exams (exam_name, class_name, exam_date) VALUES
('Mid', '6', '2024-05-01'),
('Unit 1', '6', '2024-06-01'),
('Unit 2', '6', '2024-07-01'),
('Half Yearly', '6', '2024-08-01'),
('Quarterly', '6', '2024-09-01'),
('Annually', '6', '2024-10-01');
