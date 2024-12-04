package com.studentportal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.studentportal.model.Marks;

public interface MarksRepository extends JpaRepository<Marks, Long> {
}