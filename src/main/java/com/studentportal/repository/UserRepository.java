package com.studentportal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.studentportal.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
}