package com.example.java4_sd20302.Repository;

import com.example.java4_sd20302.entity.Student;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.util.List;

public class StudentsRepository {
    private EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
   private EntityManager em = emf.createEntityManager();

    public List<Student> findAll() {
        return em.createQuery("select s from Student s", Student.class).getResultList();
    }
    public void create(Student s){
        em.getTransaction().begin();
        em.persist(s);
        em.getTransaction().commit();
    }
    public void update(Student s){
        em.getTransaction().begin();
        em.merge(s);
        em.getTransaction().commit();
    }
    public void delete(Long id){
        em.getTransaction().begin();
        em.remove(em.find(Student.class, id));
        em.getTransaction().commit();
    }
    public Student findById(Long id){
        return em.find(Student.class, id);
    }
}
