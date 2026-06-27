package sp.in.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.ResultSet;

@WebServlet("/LoginServlet")
public class Login extends HttpServlet{
 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	 PrintWriter out = resp.getWriter();
	 
	 String myemail = req.getParameter("email");
	 String mypass = req.getParameter("password");
	 
	 boolean status =false;
	 try {
		// Calling your class: ClassName.methodName()
	        Connection myCon = connection.getConnection();
	        PreparedStatement ps = myCon.prepareStatement("SELECT * FROM user where email=? and password=?");
	        ps.setString(1, myemail);
	        ps.setString(2, mypass);
	        ResultSet rs = ps.executeQuery();
            status = rs.next(); // If a record exists, status becomes true
	        
	 }
	 catch (Exception e) {
		e.printStackTrace();
	}
}
}
