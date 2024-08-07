package org.perscholas.capstone.service;

import org.perscholas.capstone.database.dao.SkillDAO;
import org.perscholas.capstone.database.dao.TutorDAO;
import org.perscholas.capstone.database.entity.Skill;
import org.perscholas.capstone.database.entity.Tutor;
import org.perscholas.capstone.form.CreateTutorFormBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

@Service
public class TutorService {

    @Autowired
    private TutorDAO tutorDao;

    @Autowired
    private SkillDAO skillDao;

    public Tutor createTutor(CreateTutorFormBean form) {
        Tutor tutor = new Tutor();
        tutor.setTutorCode(form.getTutorCode());
        tutor.setTutorName(form.getTutorName());
        tutor.setTutorDescription(form.getTutorDescription());
        tutor.setTutorCost(form.getTutorCost());

        // Retrieve and associate selected skills
        Set<Skill> skillsSet = new HashSet<>();
        if (form.getSkills() != null) {
            for (Integer skillId : form.getSkills()) {
                Optional<Skill> optionalSkill = skillDao.findById(skillId);
                if (optionalSkill.isPresent()) {
                    skillsSet.add(optionalSkill.get());
                }
            }
        }
        tutor.setSkills(skillsSet);

        return tutorDao.save(tutor);
    }
}