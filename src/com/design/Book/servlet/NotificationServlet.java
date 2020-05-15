package com.design.Book.servlet;

import com.design.Book.dao.RelationOfMeDao;
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

@WebServlet("/NotificationServlet")
public class NotificationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        Employee employee= (Employee) session.getAttribute("emp");
        RelationOfMeDao relationOfMeDao=new RelationOfMeDao();
        List<Meeting> Mylist=relationOfMeDao.LookForMeeting(employee);
        if(Mylist==null){
            //员工无会议通知
        }else {
            //有会议通知，储存相关会议并转发
            session.setAttribute("Mymeeting",Mylist);
            response.sendRedirect(request.getContextPath()+"/Booking_Notice.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
