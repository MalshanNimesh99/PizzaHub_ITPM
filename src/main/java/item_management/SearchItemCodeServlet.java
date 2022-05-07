package item_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class SearchItemCodeServlet
 */
public class SearchItemCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String itemID = request.getParameter("itemCode");
		
		RequestDispatcher dis = request.getRequestDispatcher("ItemsViewSearched.jsp?itemID="+itemID+"");
		dis.forward(request, response);
	}

}
