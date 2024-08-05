package org.perscholas.capstone.database.dao;

import org.perscholas.capstone.database.entity.Skill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.repository.query.*;

import javax.persistence.EntityGraph;
import java.util.List;
import java.util.stream.Collectors;

public interface SkillDAO extends JpaRepository<Skill, Long> {

    // Example method to search for skills based on the tutor_skills column
    // Note: This is a simplified example. You might need to adjust the query based on your actual database schema and relationships.
    @Query(value = "SELECT DISTINCT s.* FROM skills s INNER JOIN tutors_skills ts ON s.skill_id = ts.skill_id INNER JOIN case_study.tutors t ON ts.tutor_id = t.id WHERE t.tutor_code = :tutorCode", nativeQuery = true)
    List<Skill> findSkillsByTutorCode(@Param("tutorCode") String tutorCode);
    List<Skill> findBySkillNameContainingIgnoreCase(@Param("skillName") String skillName);

}
