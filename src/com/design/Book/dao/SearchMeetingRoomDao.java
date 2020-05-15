package com.design.Book.dao;

import com.design.Book.ConnectionFactory;
import com.design.Book.model.MeetingRoom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SearchMeetingRoomDao {
    public List<MeetingRoom> SearchMtRoom(String weekday,String date) throws SQLException {
        List<MeetingRoom> list=new ArrayList<>();//临时储存空闲会议室
        Connection connection= ConnectionFactory.getConnection();
        String sql="select * from meetingroom where weekday='"+weekday+"' and DATE='"+date+"' and STATUS="+"'空闲'";
        try {
            PreparedStatement statement=connection.prepareStatement(sql);
            ResultSet resultSet1=statement.executeQuery(sql);
            if (resultSet1==null){
                return null;
            }
            while (resultSet1.next()){
                MeetingRoom meetingRoom=new MeetingRoom();
                meetingRoom.setRoomName(resultSet1.getString("roomname"));
                meetingRoom.setCapacity(resultSet1.getInt("capacity"));
                meetingRoom.setRoomID(resultSet1.getInt("roomid"));
                meetingRoom.setDescription(resultSet1.getString("description"));
                list.add(meetingRoom);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;

    }
}
