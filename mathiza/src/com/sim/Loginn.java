package com.sim;
import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession; 
@WebServlet("/Loginn")
public class Loginn extends HttpServlet {  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        
          
        String name=request.getParameter("name");  
        String password=request.getParameter("password");  
          
        if(password.equals("veeramathiza")){  
        out.print("Welcome veera"+name);  
        HttpSession session=request.getSession();  
        session.setAttribute("name",name);  
        request.getRequestDispatcher("private.jsp").include(request, response);  
        }  
        else{  
            out.print("Sorry, username or password error!");  
            request.getRequestDispatcher("login.jsp").include(request, response);  
        }  
        out.close();  
    }  
}  