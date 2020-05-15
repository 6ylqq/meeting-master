package com.design.Book.servlet;

import com.design.Book.dao.LoginDao;
import com.design.Book.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    public LoginServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("utf-8");
        //获取请求参数
        String employeeName=req.getParameter("employeeName");
        String password=req.getParameter("password");
        Employee employee=new Employee();
        employee.setEmployeeName(employeeName);
        employee.setPassword(password);
        HttpSession session=req.getSession();
        //调用dao的login方法
        LoginDao loginDao=new LoginDao();
        int i=loginDao.Believe(employee);
        //判断
        if (i==0){
            //登录失败
            req.setAttribute("login_error","用户名或密码错误，或者未审批");
            req.getRequestDispatcher("/Load.jsp").forward(req,resp);
        }else {
            //登录成功
            //存储数据
            session.setAttribute("emp",employee);
            //转发
            resp.sendRedirect(req.getContextPath()+"/Booking_main.jsp");
        }
    }
}
