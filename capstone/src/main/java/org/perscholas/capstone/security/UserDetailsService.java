//package org.perscholas.capstone.security;
//
//import org.perscholas.capstone.database.dao.UserDAO;
//import org.perscholas.capstone.database.dao.UserRoleDAO;
//import org.perscholas.capstone.database.entity.User;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//import java.util.List;
//import java.util.stream.Collectors;
//
//@Service
//public class UserDetailsService implements UserDetailsService {
//
//    @Autowired
//    private UserDAO userDao;
//
//    @Autowired
//    private UserRoleDAO userRoleDao;
//
//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        User user = userDao.findByEmailIgnoreCase(username);
//        if (user == null) {
//            throw new UsernameNotFoundException("User not found");
//        }
//        List<SimpleGrantedAuthority> authorities = user.getUserRoles().stream()
//                .map(role -> new SimpleGrantedAuthority(role.getRoleName()))
//                .collect(Collectors.toList());
//        return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(), authorities);
//    }
//}
