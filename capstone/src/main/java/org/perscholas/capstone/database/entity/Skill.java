package org.perscholas.capstone.database.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Set;

@Setter
@Getter
@Entity
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "skills")
public class Skill {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "skill_id")
    private Integer skillId;

    @Column(name = "tutor_skills")
    private String skillName;

    @ManyToMany(mappedBy = "skills")
    private Set<Tutor> tutors;

    // Other fields, getters, and setters
}