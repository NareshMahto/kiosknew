package com.csc.kiosk.config;

import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DemoInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String theMethod = request.getMethod();

        if (HttpMethod.GET.matches(theMethod) || HttpMethod.POST.matches(theMethod)) {
            // GET, POST methods are allowed
      //  	System.out.println("****************************Method get post are allowed only");
            return true;
        }
        if (HttpMethod.TRACE.matches(theMethod) || HttpMethod.OPTIONS.matches(theMethod)|| HttpMethod.PUT.matches(theMethod)) {
            // everything else is not allowed
        	System.out.println("***************************Method get post are not allowed only");
            response.sendError(HttpStatus.BAD_REQUEST.value());
            return false;
        }
        return false;
    }
}
