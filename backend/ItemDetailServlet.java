package sp.in.backend;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/itemDetail")
public class ItemDetailServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. URL se ID uthao (e.g., itemDetail?id=5)
        int id = Integer.parseInt(request.getParameter("id"));
        
        // 2. DAO use karke database se data lao
        MenuDAO dao = new MenuDAO();
        menu_item item = dao.getItemById(id);
        
        // 3. Data ko JSP page pe bhejo
        request.setAttribute("item", item);
        request.getRequestDispatcher("itemDetail.jsp").forward(request, response);
    }
}