package com.studentportal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentportal.repository.MarksRepository;

@Service
public class StudentService {

    @Autowired
    private MarksRepository marksRepository;

    public String getMarks(Long studentId) {
        // In a real scenario, fetch marks from DB based on studentId
        return "Marks for student " + studentId;
    }
}