package org.perscholas.capstone.security;

import lombok.extern.slf4j.Slf4j;
import org.perscholas.capstone.database.dao.UserDAO;
import org.perscholas.capstone.database.dao.UserRoleDAO;
import org.perscholas.capstone.database.entity.User;
import org.perscholas.capstone.database.entity.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


@Slf4j
@Component
public class UserDetailsServiceImpl implements UserDetailsService {


    @Autowired
    private UserDAO userDAO;

    @Autowired
    private UserRoleDAO userRoleDAO;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
        User user = userDAO.findByEmailIgnoreCase(username);


        if(user == null){
            throw new UsernameNotFoundException("Username " + username + " not found!");
        }
        boolean accountIsEnabled = true;
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;

        List<UserRole> userRoleList = userRoleDAO.findByUserId(user.getId());

        Collection<? extends GrantedAuthority> authorities = buildGrantAuthorities(userRoleList);

        // This UserDetails object is part of Spring Security
        // Because both objets are named User, we have to use the full path to the object
        UserDetails userDetails = new org.springframework.security.core.userdetails.User(
                user.getEmail(),  // This parameter is the username, in our case the employee email from the database
                user.getPassword(), // This is the user's encrypted password from the database
                accountIsEnabled, // Is this account enabled? if false, then spring security will deny access
                accountNonExpired,
                credentialsNonExpired,
                accountNonLocked,
                authorities     // This is the list of security roles that the user is authorized to have
        );
        return userDetails;

    }


    private Collection<? extends GrantedAuthority> buildGrantAuthorities(List<UserRole> userRoles) {
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for (UserRole role : userRoles) {
            authorities.add(new SimpleGrantedAuthority(role.getRoleName()));
        }
        return authorities;

    }

}
