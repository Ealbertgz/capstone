package org.perscholas.capstone.service;

import lombok.extern.slf4j.Slf4j;
import org.perscholas.capstone.database.dao.UserDAO; // Import your UserDAO
import org.perscholas.capstone.database.dao.UserRoleDAO;
import org.perscholas.capstone.database.entity.User; // Import your User entity
import org.perscholas.capstone.database.entity.UserRole;
import org.perscholas.capstone.form.CreateUserFormBean; // Import your CreateUserFormBean
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
public class UserService {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private UserRoleDAO userRoleDAO;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public User createUser(CreateUserFormBean form) {
        log.info(form.toString());
        User user = userDAO.findById(form.getUserId());
        if (user == null) {
            user = new User();
        }

//        User user = new User();
        user.setEmail(form.getEmail()); // Correctly setting the email field
        String encryptedPassword = passwordEncoder.encode(form.getPassword());
        user.setPassword(encryptedPassword);
        user = userDAO.save(user);

        UserRole userRole = new UserRole();
        userRole.setRoleName("admin");
        userRole.setUserId(user.getId());
        userRole.setCreateDate(new Date());
        userRoleDAO.save(userRole);

        return user;
    }



}
