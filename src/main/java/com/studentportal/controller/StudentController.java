package com.studentportal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.studentportal.service.StudentService;

@RestController
@RequestMapping("/api/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/marks/{studentId}")
    public String getMarks(@PathVariable Long studentId) {
        return studentService.getMarks(studentId);
    }
}