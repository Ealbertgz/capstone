package org.perscholas.capstone.database.dao;

import org.perscholas.capstone.database.entity.Tutor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.persistence.EntityGraph;
import java.util.List;
import java.util.stream.Collectors;

public interface TutorDAO extends JpaRepository<Tutor, Integer> {

    @Query("SELECT t FROM Tutor t WHERE t.tutorName LIKE %:name% OR t.tutorCode LIKE %:name%")
    List<Tutor> findByNameOrCode(@Param("name") String name);


    // Case-insensitive search method --
    // This one misteriously breaks the code

//    @Query("SELECT t FROM Tutor t WHERE LOWER(t.tutorName) LIKE LOWER(CONCAT('%', :name, '%')) OR LOWER(t.tutorCode) LIKE LOWER(CONCAT('%', :name, '%'))")
//    List<Tutor> findByNameOrCodeIgnoreCase(@Param("name") String name);

//    // Using EntityGraph for selecting specific fields
//    @EntityGraph(attributePaths = {"id", "tutorCode", "tutorName", "tutorDescription", "tutorCost", "tutorSkills"})
//    List<Tutor> findAll();

    // Alternative approach: Using a constructor expression to return a list of objects with selected fields
//    default List<Object[]> findWithDetails() {
//        return findAll().stream()
//                .map(tutor -> new Object[]{tutor.getId(), tutor.getTutorCode(), tutor.getTutorName(), tutor.getTutorDescription(), tutor.getTutorCost(), tutor.getTutorSkills()})
//                .collect(Collectors.toList());
//    }
}
