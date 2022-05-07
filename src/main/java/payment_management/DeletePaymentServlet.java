package payment_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class DeletePaymentServlet
 */
public class DeletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String paymentID = request.getParameter("paymentID");
		boolean isTrue;
		
		isTrue = PaymentUtil.deletePay(paymentID);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("PaymentInsert.jsp");
			dis.forward(request, response);
			
		}
		else {
			List<PaymentModel> paymentDetails = PaymentUtil.getPayDetails(paymentID);
			request.setAttribute("paymentDetails", paymentDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("PaymentViewDetails.jsp");
			dispatcher.forward(request, response);
		}
	}

}
