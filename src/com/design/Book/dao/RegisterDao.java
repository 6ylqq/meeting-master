package com.design.Book.dao;


import com.design.Book.ConnectionFactory;
import com.design.Book.model.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
    public int insertUser(Employee employee){
        int i=0;
        Connection connection= ConnectionFactory.getConnection();
        String sql="insert into employee"+
                "(employeename,password,phone,STATUS)"+
                "values(?,?,?,?)" ;
            try {
            String s="未审批";
            PreparedStatement statement=connection.prepareStatement(sql);
            statement.setString(1,employee.getEmployeeName());
            statement.setString(2,employee.getPassword());
            statement.setString(3,employee.getPhone());
            statement.setString(4,s);
            i=statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return i;
    }
}
