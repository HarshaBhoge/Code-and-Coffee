package sp.in.backend;

import java.sql.Connection;
import java.sql.DriverManager; // Ye import zaroori hai

public class connection { // HttpServlet extends karne ki zaroorat nahi hai yahan
    
    private static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null || con.isClosed()) {
                // MySQL Driver Load karna
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                // Connection string (Check karein aapka password '1234' hi hai na?)
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cafemanagement_db", "root", "1234");
            }
        } catch (Exception e) {
            System.out.println("Database Connection Error: " + e.getMessage());
            e.printStackTrace();
        }
        return con;
    }
}