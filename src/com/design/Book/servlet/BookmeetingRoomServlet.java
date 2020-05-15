package com.design.Book.servlet;

import com.design.Book.dao.SearchMeetingRoomDao;
import com.design.Book.model.MeetingRoom;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/BookmeetingRoomServlet")
public class BookmeetingRoomServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String weekday=request.getParameter("weekday");
        String date=request.getParameter("date");
        SearchMeetingRoomDao searchMeetingRoomDao=new SearchMeetingRoomDao();
        try {
            List<MeetingRoom> meetingRooms=searchMeetingRoomDao.SearchMtRoom(weekday,date);
            HttpSession session=request.getSession();
            if (meetingRooms==null){
                //无会议室可供选择,暂时存数据
                request.setAttribute("noMeetingRoom","暂无可供选择的会议室");
                request.getRequestDispatcher("/Booking_Meeting.jsp").forward(request,response);
            }else {
                //有会议室，暂时储存数据
                request.setAttribute("meetingrooms",meetingRooms);
                request.getRequestDispatcher("/Booking_Meeting.jsp").forward(request,response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
