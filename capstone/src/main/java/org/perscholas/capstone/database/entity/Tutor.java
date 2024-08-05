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

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "tutors_skills", // This is the name of the join table
            joinColumns = @JoinColumn(name = "tutor_id"), // Corrected to use the 'id' column as the foreign key
            inverseJoinColumns = @JoinColumn(name = "skill_id") // Foreign key in the join table referencing Skill
    )
    private Set<Skill> skills = new HashSet<>(); // This establishes the many-to-many relationship

    // Other fields, getters, and setters
}
