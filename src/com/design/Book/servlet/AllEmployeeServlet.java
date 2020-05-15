package com.design.Book.servlet;

import com.design.Book.dao.EmployeeDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/AllEmployeeServlet")
public class AllEmployeeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        EmployeeDao employeeDao=new EmployeeDao();
        HttpSession session=request.getSession();
        try {
            if (employeeDao.findAllEmp()!=null){
                session.setAttribute("AllEmp",employeeDao.findAllEmp());
                response.sendRedirect(request.getContextPath()+"/Booking_seleteEmp.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
