package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Student;


@WebServlet("/addStudent.do")
public class AddStudentsServlet extends HttpServlet {

    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{

       String nextPage ="addStudent.jsp";

        String name = request.getParameter("name");
        String eamil = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String department = request.getParameter("department");
        String course = request.getParameter("course");
        String semester = request.getParameter("semester");
        String rollNo = request.getParameter("rollNo");
        String address = request.getParameter("address");

        Student student = new Student(name, eamil, phone, gender, dob, department, course, semester, rollNo, address);
           if (student.saveStudent()) {
               nextPage ="students.jsp";
           }     
           
           request.getRequestDispatcher(nextPage).forward(request, response);
        
    }


    public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{

        request.getRequestDispatcher("addStudent.jsp").forward(request, response);
    }
}
