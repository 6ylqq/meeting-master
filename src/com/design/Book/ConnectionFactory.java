package com.design.Book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    static final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
    static final String DB_URL="jdbc:mysql://localhost:3306/data?useSSL=false&serverTimezone=UTC";
    static final String USER="root";
    static final String PASS="13768079366yzd";

    public static Connection getConnection(){
        Connection connection=null;
        try {
            Class.forName(JDBC_DRIVER);
            System.out.println("连接数据库...");

            connection= DriverManager.getConnection(DB_URL,USER,PASS);
            System.out.println("连接数据库成功");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void main(String[] args) {
        ConnectionFactory.getConnection();
    }

}
