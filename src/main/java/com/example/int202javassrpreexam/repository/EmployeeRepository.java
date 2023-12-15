package com.example.int202javassrpreexam.repository;

import com.example.int202javassrpreexam.model.Employee;
import com.example.int202javassrpreexam.utils.EntityManagerBuilder;
import jakarta.persistence.EntityManager;

import java.util.List;

public class EmployeeRepository {
    private EntityManager em;

    public EntityManager getEntityManager() {
        if (em == null || !em.isOpen()) {
            em = EntityManagerBuilder.getEntityManager();
        }
        return em;
    }

    public List<Employee> findAll() {
        return getEntityManager().createNamedQuery("Employee.findAll", Employee.class).getResultList();
    }

    public Employee findById(String employeeId) {
        return getEntityManager()
                .createNamedQuery("Employee.findById", Employee.class)
                .setParameter("id", employeeId)
                .getSingleResult();
    }

    public Employee findByEmail(String email) {
        return getEntityManager()
                .createNamedQuery("Employee.findByEmail", Employee.class)
                .setParameter("email", email)
                .getSingleResult();
    }
}
