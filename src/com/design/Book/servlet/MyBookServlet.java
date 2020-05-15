package com.design.Book.servlet;

import com.design.Book.dao.MyBookDao;
import com.design.Book.model.Employee;
import com.design.Book.model.Meeting;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/MyBookServlet")
public class MyBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        HttpSession session=request.getSession();
        Employee employee=(Employee) session.getAttribute("emp");
        MyBookDao myBookDao=new MyBookDao();
        List<Meeting> Mylist=myBookDao.SearchMeeting(employee.getEmployeeID());
        if (Mylist==null){
            //无预定会议
        }else {
            session.setAttribute("BookMeeting",Mylist);
            response.sendRedirect(request.getContextPath()+"/Booking_Mybook.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
