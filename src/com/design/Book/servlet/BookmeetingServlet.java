package com.design.Book.servlet;

import com.design.Book.dao.AddMeetingDao;
import com.design.Book.model.Employee;
import com.design.Book.model.Meeting;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@WebServlet("/BookmeetingServlet")
public class BookmeetingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        String roomname=request.getParameter("roomName");
        String meetingname=request.getParameter("meetingname");
        String description=request.getParameter("Description");
        Employee employee=(Employee)session.getAttribute("emp");
        int emploeeid=employee.getEmployeeID();
        Date reservationTime=new Date();
        Meeting meeting=new Meeting(meetingname,roomname,emploeeid,reservationTime,description);
        AddMeetingDao addMeetingDao=new AddMeetingDao();
        int i=addMeetingDao.insert(meeting);
        int j=addMeetingDao.NewMeetingID();
        if (i!=0){
            //插入成功
            System.out.println("插入会议成功");
            session.setAttribute("meetingid",addMeetingDao.NewMeetingID());
            request.getRequestDispatcher("/Booking_seleteEmp.jsp").forward(request,response);
        }else {
            System.out.println("插入会议失败");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
