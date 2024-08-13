//package org.perscholas.capstone.test;
//
//import org.junit.jupiter.api.Test;
//import org.junit.jupiter.api.extension.ExtendWith;
//import org.perscholas.capstone.database.dao.SkillDAO;
//import org.perscholas.capstone.database.entity.Skill;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
//import org.springframework.boot.test.mock.mockito.MockBean;
//import org.springframework.test.context.junit.jupiter.SpringExtension;
//
//import java.util.Arrays;
//import java.util.List;
//
//import static org.assertj.core.api.Assertions.assertThat;
//
//@ExtendWith(SpringExtension.class)
//@DataJpaTest
//public class SkillDAOTest {
//
//    @Autowired
//    private SkillDAO skillDAO;
//
//    @Test
//    void testFindSkillsByTutorCode() {
//        // Setup mock data
//        List<Skill> mockSkills = Arrays.asList(
//                new Skill(1, "Java"),
//                new Skill(2, "Python")
//        );
//
//        // Assuming skillDAO is mocked to return the mockSkills when findSkillsByTutorCode is called
//        skillDAO.findSkillsByTutorCode("someTutorCode").forEach(skill -> {
//            assertThat(skill).isNotNull();
//            assertThat(skill.getSkillName()).isNotEmpty();
//        });
//    }
//
//    @Test
//    void testFindBySkillNameContainingIgnoreCase() {
//        // Similar setup for findBySkillNameContainingIgnoreCase
//    }
//}