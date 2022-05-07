package Order_Management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


public class Showservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	       
	   
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			
			String telephone = request.getParameter("telephone");
			
			
			boolean isTrue;
			isTrue = OrderUtil.vali(telephone);
			
			if(isTrue == true) {
				  List<OrderModel> OrdDetails = OrderUtil.getOrderDetailst(telephone);
				  request.setAttribute("OrdDetails", OrdDetails);
				 
				  RequestDispatcher dis = request.getRequestDispatcher("OrderDetails.jsp");
				  dis.forward(request, response);
			}else {
				out.println("<script type='text/javascript'>");
				out.println("alert('There is no order matches for the contact number');");
				out.println("location='OrderSearch.jsp'");
				out.println("</script>");
			}

	}

}
