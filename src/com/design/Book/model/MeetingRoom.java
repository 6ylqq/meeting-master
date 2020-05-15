package com.design.Book.model;

public class MeetingRoom {
    private int roomID;
    private int capacity;
    private String roomName;
    private String description;
    private String date;
    private String status;
    private String weekday;


    public MeetingRoom(int roomID, int capacity, String roomName, String description, String date, String status) {
        this.roomID = roomID;
        this.capacity = capacity;
        this.roomName = roomName;
        this.description = description;
        this.date = date;
        this.status = status;
    }

    public String getWeekday() {
        return weekday;
    }

    public void setWeekday(String weekday) {
        this.weekday = weekday;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public MeetingRoom() {
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }


    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
