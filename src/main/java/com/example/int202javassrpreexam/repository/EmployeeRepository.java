package com.example.int202javassrpreexam.repository;

import com.example.int202javassrpreexam.model.Employee;
import com.example.int202javassrpreexam.utils.EntityManagerBuilder;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;

import java.util.List;
import java.util.Optional;

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

    public Optional<Employee> findByEmail(String email) {
        try {
            Employee employee = getEntityManager()
                    .createNamedQuery("Employee.findByEmail", Employee.class)
                    .setParameter("email", email)
                    .getSingleResult();
            return Optional.of(employee);
        } catch (NoResultException e) {
            return Optional.empty();
        }


    }
}
