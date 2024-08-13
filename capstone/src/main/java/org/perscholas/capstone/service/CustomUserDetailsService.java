//package org.perscholas.capstone.service;
//
//import org.perscholas.capstone.database.entity.UserRole;
//import org.perscholas.capstone.database.dao.UserDAO;
//import org.perscholas.capstone.database.entity.User;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//@Service
//public class CustomUserDetailsService implements UserDetailsService {
//
//    @Autowired
//    private UserDAO userDAO;
//
//    @Override
//    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
//        User user = userDAO.findByEmailIgnoreCase(email);
//        if (user == null) {
//            throw new UsernameNotFoundException("User not found");
//        }
//        return org.springframework.security.core.userdetails.User
//                .withUsername(user.getEmail())
//                .password(user.getPassword())
//                .roles(user.getRoles().stream().map(UserRole::getRoleName).toArray(String[]::new))
//                .build();
//    }
//}
//

