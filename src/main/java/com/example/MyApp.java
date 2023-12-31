package com.example;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MyApp extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><head><title>Hello Servlet</title></head><body>");
        out.println("<h1>Hello, this is a Servlet!</h1>");
        out.println("</body></html>");
    }
}
