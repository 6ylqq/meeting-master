package com.design.Book.dao;

import com.design.Book.ConnectionFactory;
import com.design.Book.model.Meeting;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MyBookDao {
    public List<Meeting> SearchMeeting(int empId){
        List<Meeting> list=new ArrayList<>();
        Connection connection= ConnectionFactory.getConnection();
        String sql="select * from meeting where RESERVATIONISTID="+empId;
        try {
            PreparedStatement statement=connection.prepareStatement(sql);
            ResultSet resultSet=statement.getResultSet();
            if(resultSet==null){
                return null;
            }
            while (resultSet.next()){
                Meeting meeting=new Meeting();
                meeting.setDescription(resultSet.getString("description"));
               meeting.setRoomName(resultSet.getString("roomname"));
                meeting.setMeetingName(resultSet.getString("meetingname"));
                list.add(meeting);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
}
