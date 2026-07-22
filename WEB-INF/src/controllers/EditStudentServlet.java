package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Student;

@WebServlet(urlPatterns = {"/edit.do","/update.do"})
public class EditStudentServlet extends HttpServlet{

    public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
        String nextPage ="editStudent.jsp";

        Integer studentId = Integer.parseInt(request.getParameter("studentId"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String department = request.getParameter("department");
        String course = request.getParameter("course");
        String semester = request.getParameter("semester");
        String rollNo = request.getParameter("rollNo");
        String adddress = request.getParameter("address");


        Student students = new Student(studentId, name, email, phone, gender, gender, department, course, semester, rollNo, adddress);
        students.UpdateStudentData();
        request.getRequestDispatcher("students.jsp").forward(request, response);
    } 

    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
           request.getRequestDispatcher("editStudent.jsp").forward(request, response);
    } 
}
