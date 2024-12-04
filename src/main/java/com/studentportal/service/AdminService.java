package com.studentportal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentportal.model.Student;
import com.studentportal.repository.StudentRepository;

@Service
public class AdminService {

    @Autowired
    private StudentRepository studentRepository;

    public String addStudent(Student student) {
        studentRepository.save(student);
        return "Student " + student.getName() + " added successfully";
    }
}