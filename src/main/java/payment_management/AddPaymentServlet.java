package payment_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Servlet implementation class AddPaymentServlet
 */
public class AddPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String cHName = request.getParameter("cHName");
		String cardNumber = request.getParameter("cardNumber");
		String expDatem = request.getParameter("expDatem");
		String expDatey = request.getParameter("expDatey");
		String cvv = request.getParameter("cvv");
		String cusName = request.getParameter("cusName");
		String cusContact = request.getParameter("cusContact");
				
		System.out.println(cusName +" and "+cusContact);
		boolean result;
		
		result = PaymentUtil.addPayment(cHName,cardNumber,expDatem,expDatey,cvv,cusName,cusContact);
   		
		if(result == true) {

			List<PaymentModel> paymentDetails = PaymentUtil.getPayment(cardNumber);
			request.setAttribute("paymentDetails", paymentDetails);
   		
			RequestDispatcher dis = request.getRequestDispatcher("PaymentViewDetails.jsp");
			dis.forward(request, response);
						
			
		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('error:can't add payment');");
			out.println("</script>");  		
		}
   		
	}
}
