package org.perscholas.capstone.controller;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.perscholas.capstone.database.dao.UserDAO;
import org.perscholas.capstone.database.entity.User;
import org.perscholas.capstone.form.CreateUserFormBean;
import org.perscholas.capstone.security.AuthenticatedUserUtilities;
import org.perscholas.capstone.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Slf4j

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserDAO userDAO;


    @Autowired
    private AuthenticatedUserUtilities authenticatedUserUtilities;

    @GetMapping("/create-user")
    public ModelAndView createUser() {
        return new ModelAndView("user/create");
    }


    @GetMapping("/submit-user")
    public ModelAndView handleCreateUserForm(HttpSession session, @Valid CreateUserFormBean form, BindingResult bindingResult) {
        ModelAndView response = new ModelAndView("user/create");
        if (form.getUserId() == null) {
            User userByUsername = userDAO.findByEmailIgnoreCase(form.getEmail());
            if (userByUsername != null) {
                bindingResult.rejectValue("username", "username", "Try with a different username. Checking from ctrl");
            }
        }
        if (bindingResult.hasErrors()) {
            for (ObjectError error : bindingResult.getAllErrors()) {
                log.debug("Validation error : " + ((FieldError) error).getField() + " = " + error.getDefaultMessage());
            }
            response.addObject("bindingResult", bindingResult);
            response.addObject("form", form);
            response.setViewName("user/create");
        } else {
            userService.createUser(form);
            authenticatedUserUtilities.manualAuthentication(session, form.getEmail(), form.getPassword());
        }
        return response;
    }

}
