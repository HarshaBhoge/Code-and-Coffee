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

@WebServlet("/RegisterServlet")
public class Signup extends HttpServlet{
 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
 PrintWriter out = resp.getWriter();
 
 String myname=req.getParameter("name");
 String mymobile=req.getParameter("mobile");
 String myemail=req.getParameter("email");
 String mypass = req.getParameter("password");
 String myconfpass = req.getParameter("confirm_password");
 
 if(mypass!=null || mypass.equals(myconfpass)) {
	 Connection myCon=connection.getConnection();
	 
     try {
    	 String sql = "INSERT INTO users (name, mobile, email, password) VALUES (?, ?, ?, ?)";
         PreparedStatement ps = myCon.prepareStatement(sql);
         ps.setString(1, myname);
         ps.setString(2, mymobile);
         ps.setString(3, myemail);
         ps.setString(4, mypass);

         int count = ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
 }
 
 }
}
