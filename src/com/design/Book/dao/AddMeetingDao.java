package com.design.Book.dao;


import com.design.Book.ConnectionFactory;
import com.design.Book.model.Meeting;

import java.sql.*;

public class AddMeetingDao {
    //添加会议
    public int insert(Meeting meeting){
        int i=0;
        Connection connection= ConnectionFactory.getConnection();
        String sql="insert into Meeting"+
                "(meetingname,roomname,description,reservationistid,STATUS)"+
                "values(?,?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,meeting.getMeetingName() );
            statement.setString(2,meeting.getRoomName());
            statement.setString(3,meeting.getDescription() );
            statement.setInt(4, meeting.getReservationsID());
            statement.setString(5,meeting.getStatus());
            //执行插入语句
            i = statement.executeUpdate();
            if(i != 0){
                System.out.println("insert Success!");
            }else{
                System.out.println("Fail!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return i;
    }

    public int NewMeetingID(){
        int i=0;
        Connection connection=ConnectionFactory.getConnection();
        String sql="select * from meeting order by MEETINGID DESC limit 1";
        try {
            PreparedStatement statement=connection.prepareStatement(sql);
            ResultSet resultSet=statement.executeQuery();
            if (resultSet==null){
                return -1;
            }
            i=resultSet.getInt("meetingid");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    }


