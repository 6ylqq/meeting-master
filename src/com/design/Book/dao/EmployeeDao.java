package com.design.Book.dao;

import com.design.Book.ConnectionFactory;
import com.design.Book.model.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
    //查找全部会议室
    public List<Employee> findAllEmp() throws SQLException {
        List<Employee> list=new ArrayList<>();
        Connection connection= ConnectionFactory.getConnection();
        String sql="select * from employee order by EMPLOYEEID";
        PreparedStatement statement=connection.prepareStatement(sql);
        ResultSet resultSet=statement.executeQuery();
        if (resultSet.next()){
            Employee employee=new Employee();
            employee.setEmployeeID(resultSet.getInt("employeeid"));
            employee.setEmployeeName(resultSet.getString("employeename"));
            list.add(employee);
        }
        return list;

    }

}
