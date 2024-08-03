package org.perscholas.capstone.controller;

import lombok.extern.slf4j.Slf4j;
import org.perscholas.capstone.database.dao.EmployeeDAO;
import org.perscholas.capstone.database.dao.TutorDAO;
import org.perscholas.capstone.database.entity.Tutor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.*;

import java.util.List;

import static org.perscholas.capstone.database.dao.TutorDAO.*;

@Slf4j
@Controller
public class IndexController {

    @Autowired
    private TutorDAO tutorDao;



    @GetMapping("/")
    public ModelAndView index(){
        ModelAndView response= new ModelAndView("index");
        return response;

    }

    @GetMapping("/search")
    public ModelAndView search(@RequestParam(required = false) String search) {
        // this page is for another page of the website which is express as "/page-url"
        ModelAndView response = new ModelAndView("search");

        log.debug("The user searched for the term: " + search);

        // I am going to add the user input back to the model, so that
        // we can display the search term in the input field
        response.addObject("search", search);


        List<Tutor> tutors = tutorDao.findByNameOrCode(search);
        response.addObject("tutors", tutors);

        return response;
    }
}
