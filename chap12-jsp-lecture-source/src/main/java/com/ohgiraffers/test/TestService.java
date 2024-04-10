package com.ohgiraffers.test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/test")
public class TestService extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet call!!!!");
//		1. data get
        String name = request.getParameter("username");
        System.out.println("name 입니다 : " + name);
        String id = request.getParameter("userid");
        int area = Integer.parseInt(request.getParameter("area"));

//		2. logic >> 인사의 글자색을 서울 : 파랑, 대전 : 오렌지, 구미 : 핑크, 광주 : 초록, 부울경 : 보라
        String color[] = {"blue", "orange", "pink", "green", "purple"};

//		3. response page
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("	<body>");
        out.println("	<h2 style=\"color:" + color[area] + "\">안녕하세요. " + name + "(" + id + ")님!!!</h2>");
        out.println("	</body>");
        out.println("</html>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost call!!!!");
//		1. data get
        request.setCharacterEncoding("utf-8");		//doGet부분이랑 유일하게 다른 것 내부적으로io가 일어나기때문에 인코딩설정, get은 url로 넘어오기 때문에 ㄱㅊ
        String name = request.getParameter("username");			//name으로 가져온다
        System.out.println(">>>>>>>>>>>>" + name);
        String id = request.getParameter("userid");
        int area = Integer.parseInt(request.getParameter("area"));

//		2. logic >> 인사의 글자색을 서울 : 파랑, 대전 : 오렌지, 구미 : 핑크, 광주 : 초록, 부울경 : 보라
        String color[] = {"blue", "orange", "pink", "green", "purple"};

//		3. response page
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("	<body>");
        out.println("	<h2 style=\"color:" + color[area] + "\">안녕하세요. " + name + "(" + id + ")님!!!</h2>");
        out.println("	</body>");
        out.println("</html>");
    }
}

