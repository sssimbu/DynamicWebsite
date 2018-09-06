package com.sim;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

@WebServlet("/Insertothersjava")
public class Insertothersjava extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//HttpSession session = request.getSession();

		//String name = (String)session.getAttribute("name");

		//session.setAttribute("name", name);
		
		//System.out.println("name");
		
		
		String location = "C:/Users/Admin/Desktop/Workspace/mathiza/WebContent/img/";
		MultipartRequest m = new MultipartRequest(request, location, 1000000000);
		String a = m.getFilesystemName("image");
		String name=m.getParameter("name");
		String price=m.getParameter("price");
		/*int price=Integer.parseInt(m.getParameter("price"));*/
		
		String picture = location.concat(a);
		picture = picture.replace("C:/Users/Admin/Desktop/Workspace/mathiza/WebContent/i", "i");

		try {
			// System.out.println(id);

			// loading drivers for mysql
			Class.forName("com.mysql.jdbc.Driver");

			// creating connection with the database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mathiza", "root", "root");
			System.out.println("Database connected");

			/*if (picture == null) {

				PreparedStatement ps = con.prepareStatement("insert into tsession(image) values(?)");

				// PreparedStatement ps = con.prepareStatement("update imgtable
				// set image='"+picture+"'");

				ps.setString(1, picture);
				out.print(picture);
				int i = ps.executeUpdate();
System.out.println("excuted");
				if (i > 0) {
					response.sendRedirect("Retrieve.jsp");
					System.out.println("saved");

				}

			}*/
			//if (picture != null) {

			 PreparedStatement ps = con.prepareStatement("insert into otherstable(name,price,image) values(?,?,?)");

				//PreparedStatement ps = con.prepareStatement("update coctable set image='" + picture + "' where name='"+name+"'");
			 ps.setString(1,name);
			 ps.setString(2, price);
				 ps.setString(3, picture);
				out.print(picture);
				int i = ps.executeUpdate();

				if (i > 0) {
					response.sendRedirect("Insertotherssuccessful.jsp");
					System.out.println("saved");

				}

			//}

		} catch (Exception se) {
			se.printStackTrace();
		}

	}
}





