package org.perscholas.capstone.database.dao;



import org.perscholas.capstone.database.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;


public interface EmployeeDAO extends JpaRepository<Employee, Long> {

    Employee findById(Integer id);


    // select * from employee where lower(email) = lower(:email)
    Employee findByEmailIgnoreCase(String email);

}