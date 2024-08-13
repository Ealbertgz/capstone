//package org.perscholas.capstone.test;
//
//
//import org.junit.jupiter.api.Assertions;
//import org.junit.jupiter.params.ParameterizedTest;
//import org.junit.jupiter.params.provider.CsvSource;
//import org.mockito.Mockito;
//import org.perscholas.capstone.database.dao.TutorDAO;
//import org.perscholas.capstone.database.entity.Tutor;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.boot.test.mock.mockito.MockBean;
//
//import java.util.List;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//@SpringBootTest
//class TutorDAOTest {
//
//    private static final Logger LOGGER = Logger.getLogger(TutorDAOTest.class.getName());
//
//    @Autowired
//    private TutorDAO tutorDAO;
//
//    @MockBean
//    private TutorRepository tutorRepository;
//
//    @ParameterizedTest
//    @CsvSource({
//            "'John', 'JC01'",
//            "'Jane', 'JN02'",
//            "'Doe', 'DO03'"
//    })
//    void testFindByNameOrCode(String name, String expectedCode) {
//        // Mocking the behavior of the repository
//        Mockito.when(tutorDAO.findByNameOrCode(Mockito.anyString()))
//                .thenReturn(List.of(new Tutor(1, "John Doe", "JD01", "Excellent tutor", 100.0)));
//
//        // Execute the method under test
//        List<Tutor> result = tutorDAO.findByNameOrCode(name);
//
//        // Assertions
//        Assertions.assertNotNull(result);
//        Assertions.assertFalse(result.isEmpty());
//        Assertions.assertEquals(expectedCode, result.get(0).getTutorCode());
//
//        // Logging
//        LOGGER.log(Level.INFO, "Test executed with name: {0}, Expected code: {1}", new Object[]{name, expectedCode});
//    }
//}