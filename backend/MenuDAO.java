package sp.in.backend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MenuDAO {

    // 1. Method: ID se specific menu item fetch karne ke liye (Details Page ke liye)
    public menu_item getItemById(int id) {
        menu_item item = null;
        String query = "SELECT * FROM menu WHERE id = ?";
        
        // Aapki connection class ka static method use kar rahe hain
        try (Connection con = connection.getConnection(); 
             PreparedStatement ps = con.prepareStatement(query)) {
            
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Aapki menu_item class ka constructor call kar rahe hain
                item = new menu_item(
                    rs.getInt("id"),
                    rs.getString("item_name"),
                    rs.getDouble("price"),
                    rs.getString("description"),
                    rs.getString("category"),
                    rs.getString("image_url"),
                    rs.getString("long_description"),
                    rs.getString("sizes")
                );
            }
        } catch (SQLException e) {
            System.out.println("Error in getItemById: " + e.getMessage());
            e.printStackTrace();
        }
        return item;
    }

    // 2. Method: Saare items fetch karne ke liye (Main Menu Page ke liye)
    public List<menu_item> getAllItems() {
        List<menu_item> list = new ArrayList<>();
        String query = "SELECT * FROM menu";

        try (Connection con = connection.getConnection();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                list.add(new menu_item(
                    rs.getInt("id"),
                    rs.getString("item_name"),
                    rs.getDouble("price"),
                    rs.getString("description"),
                    rs.getString("category"),
                    rs.getString("image_url"),
                    rs.getString("long_description"),
                    rs.getString("sizes")
                ));
            }
        } catch (SQLException e) {
            System.out.println("Error in getAllItems: " + e.getMessage());
            e.printStackTrace();
        }
        return list;
    }
}