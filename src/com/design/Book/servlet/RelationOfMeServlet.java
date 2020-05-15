package com.design.Book.servlet;

import com.design.Book.dao.RelationOfMeDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/RelationOfMeServlet")
public class RelationOfMeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        HttpSession session=request.getSession();
        int employeeid=Integer.parseInt(request.getParameter("employeeid"));
        RelationOfMeDao relationOfMeDao=new RelationOfMeDao();
        int i=relationOfMeDao.insert(Integer.parseInt((String) session.getAttribute("meetingid")),employeeid);
        if(i==0){
            //插入失败
            request.setAttribute("Add_error","添加失败");
            request.getRequestDispatcher("/Booking_Meeting.jsp").forward(request,response);
        }else {
            //插入成功，跳转到相应页面
            response.sendRedirect(request.getContextPath()+"/Booking_Mymt.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
