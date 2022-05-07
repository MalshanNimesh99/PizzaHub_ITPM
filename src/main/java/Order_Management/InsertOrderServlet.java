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






/**
 * Servlet implementation class InsertOrderServlet
 */
public class InsertOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String telephone = request.getParameter("telephone");
		String flavour = request.getParameter("flavour");
		String type = request.getParameter("type");
		String size = request.getParameter("size");
		String cheese = request.getParameter("cheese");
		String instructions = request.getParameter("instructions");
		
boolean isTrue;
		
		isTrue = OrderUtil.insertorder(name,address,telephone,flavour, type, size, cheese, instructions);
		if(isTrue==true) {
			
			
			  List<OrderModel> OrdDetails= OrderUtil.getOrderDetails(name);
			  request.setAttribute("OrdDetails",OrdDetails);
			  
			  
			  RequestDispatcher dis= request.getRequestDispatcher("OrderDetails.jsp");
			  dis.forward(request, response);
			 
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('succcess');");
			out.println("</script>");
			
		}else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('unsucccess');");
			out.println("</script>");
			
			  RequestDispatcher dis2 = request.getRequestDispatcher("OrderMain.jsp");
			  dis2.forward(request, response);
			 
			
			
			
		}


	}

}
