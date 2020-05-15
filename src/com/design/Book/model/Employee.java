package com.design.Book.model;

public class Employee {
    private int employeeID;
    private String phone;
    private String employeeName;
    private String password;

    public Employee(String employeeName,int employeeID, String phone, String password) {
        this.employeeID = employeeID;
        this.phone = phone;
        this.employeeName = employeeName;
        this.password = password;
    }

    public Employee() {
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}


