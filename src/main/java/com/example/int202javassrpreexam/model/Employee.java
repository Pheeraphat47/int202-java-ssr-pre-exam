package com.example.int202javassrpreexam.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@Table(name = "employees")
@ToString
@NamedQueries(
        @NamedQuery(name = "Employee.findAll", query = "select e from Employee e")
)
public class Employee {

    @Id
    @Column(name= "employeeNumber", nullable = false)
    private Integer id;
    private String firstName;
    private String lastName;
    private String extension;
    private String email;
    private String officeCode;
}
