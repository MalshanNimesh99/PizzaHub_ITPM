package payment_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class SearchPaymentServlte extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String cNumber = request.getParameter("cNumber");
		
		
		boolean isTrue;
		isTrue = PaymentUtil.validate(cNumber);
		
		if(isTrue == true) {
			  List<PaymentModel> paymentDetails = PaymentUtil.getPayment(cNumber);
			  request.setAttribute("paymentDetails", paymentDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("PaymentViewDetails.jsp");
			  dis.forward(request, response);
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('There is no payment matches for the card number');");
			out.println("location='PaymentSearch.jsp'");
			out.println("</script>");
		}
	}

}
