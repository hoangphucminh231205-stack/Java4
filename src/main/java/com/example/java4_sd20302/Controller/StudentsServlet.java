package com.example.java4_sd20302.Controller;

import java.io.IOException;

import com.example.java4_sd20302.Service.StudentService;
import com.example.java4_sd20302.entity.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "studentsServlet", value = {
        "/students",
        "/students/create",
        "/students/update",
        "/students/delete"
})
public class StudentsServlet extends HttpServlet {

    private StudentService service = new StudentService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/students":
                this.getAll(request, response);
                break;
            case "/students/create":
                this.showCreateForm(request, response);
                break;
            case "/students/update":
                this.showUpdateForm(request, response);
                break;
            case "/students/delete":
                this.handleDelete(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/students/create":
                this.handleCreate(request, response);
                break;
            case "/students/update":
                this.handleUpdate(request, response);
                break;
            case "/students/delete":
                this.handleDelete(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    private void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("students", service.findAll());
        request.getRequestDispatcher("/views/students.jsp").forward(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/create.jsp").forward(request, response);
    }
    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Long id = Long.parseLong(request.getParameter("id"));
            Student student = service.findById(id);
            request.setAttribute("student", student);
            request.getRequestDispatcher("/views/update.jsp").forward(request, response);
    }

    private void handleCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            Student student = new Student(name, email, phone);
            service.create(student);
            response.sendRedirect(request.getContextPath() + "/students");

    }

    private void handleUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Long id = Long.parseLong(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            Student student = new Student(id, name, email, phone);
            service.update(student);
            response.sendRedirect(request.getContextPath() + "/students");
    }

    private void handleDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Long id = Long.parseLong(request.getParameter("id"));
            service.delete(id);
            response.sendRedirect(request.getContextPath() + "/students");
    }
}