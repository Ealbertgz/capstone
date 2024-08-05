package org.perscholas.capstone.database.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.HashSet;
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
    @Column(name = "tutor_id")
    private Integer tutorId;
    @Column(name ="tutor_skills")
    private String skillName;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "tutors_skills", // This is the name of the join table
            joinColumns = @JoinColumn(name = "skill_id"), // Foreign key in the join table referencing Skill
            inverseJoinColumns = @JoinColumn(name = "tutor_id") // Foreign key in the join table referencing Tutor
    )
    private Set<Tutor> tutors = new HashSet<>();

    // Other fields, getters, and setters
}