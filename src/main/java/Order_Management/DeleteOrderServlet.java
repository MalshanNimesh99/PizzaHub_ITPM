package Order_Management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class DeleteOrderServlet
 */
public class DeleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idorder= request.getParameter("idorder");
		String telephone= request.getParameter("telephone");
		boolean isTrue;
		
		isTrue=OrderUtil.deleteOrder(idorder);
		
		if(isTrue==true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("OrderMain.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<OrderModel> OrdDetails= OrderUtil.getOrderDetailst(telephone);
			request.setAttribute("OrdDetails",OrdDetails);
			RequestDispatcher dispatcher=request.getRequestDispatcher("OrderDetails.jsp");
			dispatcher.forward(request, response);
		}
	
	}

}
