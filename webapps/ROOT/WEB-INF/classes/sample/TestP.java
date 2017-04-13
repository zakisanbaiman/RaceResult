package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestP")
public class TestP extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public TestP() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF8");
        response.setContentType("text/html; charset=UTF8");
        response.getWriter().append("post1:").append(request.getParameter("aaa"));
        response.getWriter().append("");
        response.getWriter().append("post2:").append(request.getParameter("bbb"));
    }
}

