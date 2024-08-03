package org.perscholas.capstone.database.dao;

import org.perscholas.capstone.database.entity.Tutor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface TutorDAO extends JpaRepository<Tutor, Long> {

    // this is a magic query in that .... spring data JPA is able to use the method name to generate the query
    Tutor findById(Integer id);

    // this is a JPA query just like we did in the hibernate module
    @Query("select t from Tutor t where t.tutorName like concat('%', :name, '%') or t.tutorCode like concat('%', :name, '%')")
    List<Tutor> findByNameOrCode(String name);
}
