package com.ohgiraffers.facebook;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter("/login/*")
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest servletRequest1 = (HttpServletRequest) servletRequest;
        String userName = servletRequest1.getParameter("userName");
        HttpServletResponse servletResponse1 = (HttpServletResponse) servletResponse;
        String userPassword = servletRequest1.getParameter("userPassword");

//        System.out.println("userName = " + userName);
//        System.out.println("userPassword = " + userPassword);
//        LoginCheck loginCheck = new LoginCheck();
//        if(loginCheck.isLogin(userName,userPassword)){
//            System.out.println("성공");
//        } else {
//            System.out.println("실패!");
//        }
        //---------------------------------------------
//        if (name.equals(userId) && password.equals(userPassword)) {
//            HttpSession session = req.getSession();
//            session.setAttribute("userId", userId);
//            session.setMaxInactiveInterval(60 * 10);
//            System.out.println("성공");

        String name = "yoonjae123";
        String password = "qwer1234";
            if(name.equals(userName) && password.equals(userPassword)){
                System.out.println("성공");
                servletResponse1.sendRedirect("/jsp/loginSuccess.jsp");
            } else {
                System.out.println("실패");
                servletResponse1.sendRedirect("/jsp/loginFailed.jsp");
            }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
