package org.perscholas.capstone.database.dao;

import org.perscholas.capstone.database.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UserDAO extends JpaRepository<User, Long> {

    User findById(Integer id);

    @Query("SELECT u FROM User u WHERE u.email LIKE %:email% OR u.password LIKE %:email%")
    List<User> findByEmailOrPassword(@Param("email") String email);
    User findByEmailIgnoreCase(String email);

}