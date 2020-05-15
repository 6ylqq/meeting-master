package com.design.Book.servlet;

import com.design.Book.dao.RegisterDao;
import com.design.Book.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String employeename=request.getParameter("employeename");
        int employeeid=Integer.parseInt(request.getParameter("employeeid"));
        String phone=(request.getParameter("phone"));
        String password=request.getParameter("password");
        String password2=request.getParameter("password_sure");

        if (!password.equals(password2)){
            request.getSession().setAttribute("Register_error","两次密码不一致！");
            request.getRequestDispatcher("/Load.jsp").forward(request,response);
        }
        Employee employee=new Employee(employeename,employeeid,phone,password);
        RegisterDao registerDao=new RegisterDao();
        int i=registerDao.insertUser(employee);
        System.out.println(i);
        request.getRequestDispatcher("/Load.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
