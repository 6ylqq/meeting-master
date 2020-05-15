package com.design.Book.dao;

import com.design.Book.ConnectionFactory;
import com.design.Book.model.Employee;
import com.design.Book.model.Meeting;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RelationOfMeDao {
    public int insert(int meetingid, int employeeid){
        int i=0;
        Connection connection= ConnectionFactory.getConnection();
        String sql="insert into relationofme (employeeid, meetingid) values (?,?);";
        try {
            PreparedStatement statement=connection.prepareStatement(sql);
            statement.setInt(1,employeeid);
            statement.setInt(2,meetingid);
            i=statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    public List<Meeting> LookForMeeting(Employee employee){
        List<Meeting> list=new ArrayList<>();
        Connection connection=ConnectionFactory.getConnection();
        String sql="select meetingid from relationofme where employeeid="+employee.getEmployeeID();
        try {
            PreparedStatement statement=connection.prepareStatement(sql);
            ResultSet resultSet=statement.executeQuery();
            if (resultSet==null){
                return null;
            }
            while (resultSet.next()){
                Meeting mt = new Meeting();
                mt.setMeetingID(resultSet.getInt("meetingid"));
                mt.setMeetingName(resultSet.getString("meetingname"));
                mt.setStartTime(resultSet.getDate("starttime"));
                mt.setEndTime(resultSet.getDate("endtime"));
                mt.setReservation(resultSet.getDate("reservationtime"));
                mt.setRoomName(resultSet.getString("roomname"));
                mt.setDescription(resultSet.getString("description"));
                list.add(mt);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Employee> LookForEmployee(Meeting meeting){
        List<Employee> list=new ArrayList<>();
        Connection connection=ConnectionFactory.getConnection();
        String sql="select employeeid from relationofme where meetingid="+meeting.getMeetingID();
        try {
            PreparedStatement statement=connection.prepareStatement(sql);
            ResultSet resultSet=statement.executeQuery();
            if (resultSet==null){
                return null;
            }
            while (resultSet.next()){
                Employee emp=new Employee();
                emp.setEmployeeID(resultSet.getInt("employeeid"));
                emp.setEmployeeName(resultSet.getString("employeename"));
                emp.setPhone(resultSet.getString("phone"));
                list.add(emp);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
