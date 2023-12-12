package com.example.int202javassrpreexam;

import com.example.int202javassrpreexam.model.Employee;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.util.List;

public class TestQuery {
    public static void main(String[] args) {
        testQuery();
    }

    public static void testQuery() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        List<Employee> employeeList = em.createNamedQuery("Employee.findAll", Employee.class).getResultList();
        for (Employee employee : employeeList) {
            System.out.println(employee);
        }
    }
}
