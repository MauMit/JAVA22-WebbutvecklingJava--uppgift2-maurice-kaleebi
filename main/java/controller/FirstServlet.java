package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.mbeans.DataSourceUserDatabaseMBean;

import model.UserBean;
import model.UserHandler;


@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public FirstServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/LoginPage.jsp");
		requestDispatcher.forward(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = (request.getParameter("username"));
		String pass = (request.getParameter("password"));
		
        UserBean userBean = new UserBean();
        
        userBean.setUser(user, pass);
		
		if(userBean.checkValidUser()) {
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("userBean", userBean);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/LoginPage.jsp");
		requestDispatcher.forward(request, response);	
		} else {
			response.sendRedirect("views/Error.jsp");
		}
		
	}

}
