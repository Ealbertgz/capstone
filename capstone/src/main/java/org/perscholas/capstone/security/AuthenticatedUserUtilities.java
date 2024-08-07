//package org.perscholas.capstone.security;
//
//import org.perscholas.capstone.database.dao.UserDAO;
//import org.perscholas.capstone.database.entity.User;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.authentication.AnonymousAuthenticationToken;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.AuthenticationException;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.context.SecurityContext;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.stereotype.Component;
//import org.springframework.transaction.annotation.Transactional;
//
//
//
//import javax.persistence.EntityManager;
//
//import java.util.Collection;
//import java.util.List;
//import java.util.stream.Collectors;
//
//@Component
//public class AuthenticatedUserUtilities {
//
//    private static final Logger LOG = LoggerFactory.getLogger(AuthenticatedUserUtilities.class);
//
//    @Autowired
//    private EntityManager entityManager;
//
//    @Autowired
//    private UserDAO userDAO;
//
//    @Autowired
//    private AuthenticationManager authenticationManager;
//
//    public String getCurrentUsername() {
//        SecurityContext context = SecurityContextHolder.getContext();
//        if (context != null && context.getAuthentication() != null) {
//            if (context.getAuthentication() instanceof AnonymousAuthenticationToken) {
//                return null;
//            }
//
//            UserDetails userDetails = (UserDetails) context.getAuthentication().getPrincipal();
//            return userDetails.getUsername();
//        } else {
//            return null;
//        }
//    }
//
//    public User getCurrentUser() {
//        String username = getCurrentUsername();
//        if (username == null) {
//            return null;
//        }
//        User user = userDAO.findByEmailIgnoreCase(username);
//        if (user != null) {
//            Collection<GrantedAuthority> authorities = user.getUserRoles().stream()
//                    .map(role -> new SimpleGrantedAuthority(userRole.getRoleName()))
//                    .collect(Collectors.toList());
//            user.setAuthorities(authorities);
//        }
//        return user;
//    }
//
//    @Transactional
//    public void manualAuthentication(String username, String password) {
//        try {
//            Authentication request = new UsernamePasswordAuthenticationToken(username, password);
//            Authentication result = authenticationManager.authenticate(request);
//            SecurityContextHolder.getContext().setAuthentication(result);
//        } catch (AuthenticationException e) {
//            LOG.error("Authentication failed", e);
//        }
//    }
//}
