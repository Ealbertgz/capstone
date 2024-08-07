package org.perscholas.capstone.form;
import java.util.List;

public class CreateTutorFormBean {

    private Integer tutorId;
    private String tutorCode;
    private String tutorName;
    private String tutorDescription;
    private Double tutorCost;
    private List<Integer> skills; // List of selected skill IDs

    // Getters and setters for all fields

    public Integer getTutorId() {
        return tutorId;
    }

    public void setTutorId(Integer tutorId) {
        this.tutorId = tutorId;
    }

    public String getTutorCode() {
        return tutorCode;
    }

    public void setTutorCode(String tutorCode) {
        this.tutorCode = tutorCode;
    }

    public String getTutorName() {
        return tutorName;
    }

    public void setTutorName(String tutorName) {
        this.tutorName = tutorName;
    }

    public String getTutorDescription() {
        return tutorDescription;
    }

    public void setTutorDescription(String tutorDescription) {
        this.tutorDescription = tutorDescription;
    }

    public Double getTutorCost() {
        return tutorCost;
    }

    public void setTutorCost(Double tutorCost) {
        this.tutorCost = tutorCost;
    }

    public List<Integer> getSkills() {
        return skills;
    }

    public void setSkills(List<Integer> skills) {
        this.skills = skills;
    }
}


