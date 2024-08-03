package org.perscholas.capstone.database.entity;

import jakarta.persistence.*;
import lombok.*;

@Setter
@Getter
@Entity
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tutors")
public class Tutor {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "tutor_code")
    private String tutorCode;

    @Column(name = "tutor_name")
    private String tutorName;


    @Column(name = "tutor_description", columnDefinition="TEXT")
    private String tutorDescription;


    @Column(name = "tutor_cost", columnDefinition = "DECIMAL")
    private Double tutorCost;

    @Column(name = "tutor_skills")
    private String tutorSkills;

}