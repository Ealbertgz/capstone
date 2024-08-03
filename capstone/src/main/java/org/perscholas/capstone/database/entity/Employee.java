package org.perscholas.capstone.database.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.query.Page;

import java.util.List;
import java.util.Set;

@Setter
@Getter
@Entity
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "employees")
public class Employee {

    @Id // this is telling hibernate this column is the PK
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // this telling hibernate that the PK is auto increment
    @Column(name = "id")
    private Integer id;



    @Column(name = "lastname")
    private String lastname;

    @Column(name = "firstname")
    private String firstname;


    @Column(name = "email")
    private String email;

    @Column(name = "reports_to")
    private Integer reportsTo;



}