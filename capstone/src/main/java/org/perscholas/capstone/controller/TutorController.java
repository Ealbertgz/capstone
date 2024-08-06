package org.perscholas.capstone.controller;

import jakarta.validation.Valid;
import org.perscholas.capstone.database.dao.SkillDAO;
import org.perscholas.capstone.database.dao.TutorDAO;
import org.perscholas.capstone.database.entity.Skill;
import org.perscholas.capstone.database.entity.Tutor;
import org.perscholas.capstone.form.CreateTutorFormBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.perscholas.capstone.service.TutorService;


import java.util.List;



    @Controller
    @RequestMapping("/tutor")
    public class TutorController {

        @Autowired
        private TutorDAO tutorDao;

        @Autowired
        private SkillDAO skillDao;

        @Autowired
        private TutorService tutorService;

        @GetMapping("/create")
        public ModelAndView create() {
            ModelAndView response = new ModelAndView("tutor/create");
            loadDropdowns(response);
            return response;
        }

        private void loadDropdowns(ModelAndView response) {
            // Load skills dropdown
            List<Skill> skills = skillDao.findAll();
            response.addObject("skills", skills);
        }

        @PostMapping("/createSubmit")
        public ModelAndView createSubmit(@Valid CreateTutorFormBean form, BindingResult bindingResult) {
            ModelAndView response = new ModelAndView();

            if (bindingResult.hasErrors()) {
                response.addObject("bindingResult", bindingResult);
                loadDropdowns(response);
                response.setViewName("tutor/create");
                return response;
            } else {
                Tutor tutor = tutorService.createTutor(form);
                response.setViewName("redirect:/tutor/detail?tutorId=" + tutor.getId());
                return response;
            }
        }
    }

