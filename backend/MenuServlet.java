
package sp.in.backend;

import java.io.IOException;
import java.sql.*;
import java.util.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/MenuServlet") // Is URL ko call karke menu khulega
public class MenuServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<menu_item> list = new ArrayList<>();
        
        try {
            // Aapka Connection class use ho raha hai
        
            Connection myCon = connection.getConnection();
            String query = "SELECT * FROM menu";
            PreparedStatement ps = myCon.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
        
            while(rs.next()) {
            	int id = rs.getInt("id");
                String name = rs.getString("item_name");
                String category = rs.getString("category");
                String desc = rs.getString("description");
                double price = rs.getDouble("price");
                String imageUrl = rs.getString("image_url");
                String longDesc = rs.getString("long_description");
                String sizes = rs.getString("sizes");
                
                // Naya object banakar list mein add karna
                menu_item item = new menu_item(id, name, price, desc, category, imageUrl, longDesc, sizes);
                list.add(item);
            }
            
            // List ko request mein set karna taaki JSP ise access kar sake
            request.setAttribute("items", list);
            
            // Menu page par bhej dena
            request.getRequestDispatcher("menu.jsp").forward(request, response);
        
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(500, "Database connection error!");
        }
    }
}