package com.example.java4_sd20302.Service;

import java.util.List;

import com.example.java4_sd20302.Repository.StudentsRepository;
import com.example.java4_sd20302.entity.Student;

public class StudentService {
private StudentsRepository repo = new StudentsRepository();
    public List<Student> findAll() {
        return repo.findAll();
    }
    public void create(Student student) {
        repo.create(student);
    }
    public void update(Student student) {
        repo.update(student);
    }
    public void delete(Long id) {
        repo.delete(id);
    }
    public Student findById(Long id) {
        return repo.findById(id);
    }
}
