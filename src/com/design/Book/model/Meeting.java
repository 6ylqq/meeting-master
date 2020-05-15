package com.design.Book.model;

import java.util.Date;

public class Meeting {
    private int meetingID;
    private String meetingName;
    private String roomName;
    private  int reservationsID;//预定者ID
    private int numberParticipants;//与会人数
    private Date startTime;
    private Date endTime;
    private Date reservation;
    private Date canceledTime;
    private String description;
    private String status;

    public Meeting(String meetingName, String roomName, int reservationsID, Date reservation, String description) {
        this.meetingName = meetingName;
        this.roomName=roomName;
        this.reservationsID = reservationsID;
        this.reservation = reservation;
        this.description = description;
        this.status="未审批";
    }

    public Meeting() {
    }

    public int getMeetingID() {
        return meetingID;
    }

    public void setMeetingID(int meetingID) {
        this.meetingID = meetingID;
    }

    public String getMeetingName() {
        return meetingName;
    }

    public void setMeetingName(String meetingName) {
        this.meetingName = meetingName;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public int getReservationsID() {
        return reservationsID;
    }

    public void setReservationsID(int reservationsID) {
        this.reservationsID = reservationsID;
    }

    public int getNumberParticipants() {
        return numberParticipants;
    }

    public void setNumberParticipants(int numberParticipants) {
        this.numberParticipants = numberParticipants;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Date getReservation() {
        return reservation;
    }

    public void setReservation(Date reservation) {
        this.reservation = reservation;
    }

    public Date getCanceledTime() {
        return canceledTime;
    }

    public void setCanceledTime(Date canceledTime) {
        this.canceledTime = canceledTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    }
