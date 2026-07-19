package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Faculty;


@WebServlet("/login.do")
public class LoginServlet extends HttpServlet{

    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{

        String nextPage="index.jsp";
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        

        Faculty faculty = new Faculty(email, password);
        if (faculty.Login()) {
             nextPage ="dashboard.do";
        }else{
            request.setAttribute("error", "Incorrect username or password. Please try again.");
        }
        request.getRequestDispatcher(nextPage).forward(request, response);

    }
    

    public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    
}
