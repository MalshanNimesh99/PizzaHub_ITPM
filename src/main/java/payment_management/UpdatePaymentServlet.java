package payment_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


/**
 * Servlet implementation class UpdatePaymentServlet
 */
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String paymentID = request.getParameter("paymentID");
		String cHName = request.getParameter("cHName");
		String cardNumber = request.getParameter("cardNumber");
		String expDatem = request.getParameter("expDatem");
		String expDatey = request.getParameter("expDatey");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue;
		isTrue = PaymentUtil.updatePay(paymentID ,cHName , cardNumber , expDatem, expDatey , cvv );
		
		if(isTrue == true) {
			  List<PaymentModel> paymentDetails = PaymentUtil.getPayDetails(paymentID);
			  request.setAttribute("paymentDetails", paymentDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("PaymentViewDetails.jsp");
			  dis.forward(request, response);
		}else {
			
			List<PaymentModel> paymentDetails = PaymentUtil.getPayDetails(paymentID);
			  request.setAttribute("paymentDetails", paymentDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("PaymentViewDetails.jsp");
			  dis.forward(request, response);
		}
	}

}
