package com.design.Book.dao;

import com.design.Book.ConnectionFactory;
import com.design.Book.model.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {

    //员工登录的核验
    public int Believe(Employee emp){
        int i=0;
        Connection connection= ConnectionFactory.getConnection();
        try {
            PreparedStatement statement=null;
            String sql="select * from employee where employeename='"+emp.getEmployeeName()+"'and password='"+emp.getPassword()+"'"+" and STATUS="+"'已审批'";
            statement=connection.prepareStatement(sql);
            ResultSet rs=statement.executeQuery(sql);//返回结果集并对其操作
            if(rs.next()==true){
                emp.setEmployeeID(rs.getInt("employeeid"));
                i=1;
            }else {
                i=0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    //查找员工相关信息
    public Employee getid(String username){
        Employee employee=new Employee();
        Connection connection=ConnectionFactory.getConnection();
        try {
            String sql="select employeeid,phone,employeeName,userName,password from employee where username='"+username+"'";
            PreparedStatement statement=connection.prepareStatement(sql);
            ResultSet rs=statement.executeQuery();
            if(rs.next()==true){
                employee.setEmployeeID(rs.getInt("employeeid"));
                employee.setPhone(rs.getString("phone"));
                employee.setPassword(rs.getString("password"));
                employee.setEmployeeName(rs.getString("employeename"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employee;
    }

}
