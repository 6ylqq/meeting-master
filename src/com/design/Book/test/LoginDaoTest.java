package com.design.Book.test;

import com.design.Book.dao.LoginDao;
import com.design.Book.model.Employee;
import org.junit.jupiter.api.Test;

public class LoginDaoTest {

    @Test
    public void testLogin(){
        Employee loginEmp=new Employee();
        loginEmp.setEmployeeName("zs");
        loginEmp.setPassword("123");

        LoginDao dao=new LoginDao();
        int i=dao.Believe(loginEmp);
        System.out.println(i);

    }
}
