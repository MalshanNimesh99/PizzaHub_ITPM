package item_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class SearchItemCatServlet
 */
public class SearchItemCatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemCategory = request.getParameter("itemCategory");
		
		RequestDispatcher dis = request.getRequestDispatcher("ItemsViewSearched.jsp?itemCategory="+itemCategory+"");
		dis.forward(request, response);
	}

}
