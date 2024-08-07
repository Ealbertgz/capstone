package org.perscholas.capstone.database.dao;

import org.perscholas.capstone.database.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDAO extends JpaRepository<User, Integer> {


    User findByEmailIgnoreCase(String email);

}