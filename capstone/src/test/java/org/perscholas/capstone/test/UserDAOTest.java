//package org.perscholas.capstone.test;
//
//
//import org.junit.jupiter.api.Assertions;
//import org.junit.jupiter.api.Order;
//import org.junit.jupiter.params.ParameterizedTest;
//import org.junit.jupiter.params.provider.CsvSource;
//import org.mockito.Mockito;
//import org.perscholas.capstone.database.dao.UserDAO;
//import org.perscholas.capstone.database.entity.User;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.boot.test.mock.mockito.MockBean;
//
//import java.util.List;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//@SpringBootTest
//class UserDAOTest {
//
//    private static final Logger LOGGER = Logger.getLogger(UserDAOTest.class.getName());
//
//    @Autowired
//    private UserDAO userDAO;
//
//    @MockBean
//    private UserRepository userRepository;
//
//    @ParameterizedTest
//    @CsvSource({
//            "'john@example.com', 'pass123'",
//            "'jane@example.com', 'secret'"
//    })
//    void testFindByEmailOrPassword(String email, String expectedPassword) {
//        // Mocking the behavior of the repository
//        Mockito.when(userDAO.findByEmailOrPassword(email))
//                .thenReturn(List.of(new User(1, "john@example.com", "pass123")));
//
//        // Execute the method under test
//        List<User> result = userDAO.findByEmailOrPassword(email);
//
//        // Assertions
//        Assertions.assertNotNull(result);
//        Assertions.assertFalse(result.isEmpty());
//        Assertions.assertEquals(expectedPassword, result.get(0).getPassword());
//
//        // Logging
//        LOGGER.log(Level.INFO, "Test executed with email: {0}, Expected password: {1}", new Object[]{email, expectedPassword});
//    }
//
//    @Order(1)
//    @ParameterizedTest
//    @CsvSource({"'john@example.com'", "'jane@example.com'"})
//    void testFindByEmail(String email) {
//        // Assuming findByEmail method is implemented in UserRepository
//        User foundUser = userRepository.findByEmail(email);
//        Assertions.assertNotNull(foundUser);
//        Assertions.assertEquals(email, foundUser.getEmail());
//    }
//
//    @Order(2)
//    @ParameterizedTest
//    @CsvSource({"'john@example.com'", "'jane@example.com'"})
//    void testDeleteByEmail(String email) {
//        // Assuming deleteByEmail method is implemented in UserRepository
//        int deletedCount = userRepository.deleteByEmail(email);
//        Assertions.assertTrue(deletedCount > 0);
//    }
//}