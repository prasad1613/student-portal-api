package com.studentportal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.studentportal.service.AdminService;
import com.studentportal.model.Student;

@RestController
@RequestMapping("/api/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @PostMapping("/addStudent")
    public String addStudent(@RequestBody Student student) {
        return adminService.addStudent(student);
    }
}