-- Insert sample users
INSERT INTO users (username, password, role) VALUES
('admin', 'admin_password', 'admin'),
('student1', 'student_password', 'student');

-- Insert sample students
INSERT INTO students (first_name, last_name, dob, gender, address, user_id) VALUES
('John', 'Doe', '2008-01-15', 'Male', '123 Main St', 2);

-- Insert sample marks for the student
INSERT INTO marks (student_id, class_name, subject, mid_exam_marks, unit_exam_marks, half_yearly_marks, quarterly_marks, annual_marks) VALUES
(1, '6', 'Telugu', 75, 80, 90, 85, 88),
(1, '6', 'Maths', 85, 90, 95, 90, 92),
(1, '6', 'English', 78, 82, 88, 80, 85);
