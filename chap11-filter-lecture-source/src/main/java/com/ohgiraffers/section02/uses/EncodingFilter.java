package com.ohgiraffers.section02.uses;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/* xml 방식으로 filter 등록해보기 */
public class EncodingFilter implements Filter {

    private String encodingType;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

        /* 필기. xml 설정한 init-param 의 key 를 이용하여 config 에서 값을 꺼낼 수 있다. */
        encodingType = filterConfig.getInitParameter("encoding-type");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletResponse response = (HttpServletResponse) servletResponse;

        response.setContentType(encodingType);      // text/html; charset=UTF-8 설정 넘겨줌

        filterChain.doFilter(servletRequest, servletResponse);

    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
