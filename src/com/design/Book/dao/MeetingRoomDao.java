package com.design.Book.dao;


import com.design.Book.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MeetingRoomDao {

    public int findMrId(String roomname){
        int i=-1;
        Connection connection=ConnectionFactory.getConnection();
        String sql="select roomid from meetingroom where ROOMNAME="+roomname;
        try {
            PreparedStatement statement=connection.prepareStatement(sql);
            ResultSet resultSet=statement.executeQuery();
            if (resultSet.next()){
                i=resultSet.getInt("roomid");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }
}
