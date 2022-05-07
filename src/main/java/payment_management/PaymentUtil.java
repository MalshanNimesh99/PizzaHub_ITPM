package payment_management;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class PaymentUtil {
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	//-------------------------insert-------------------
			public static boolean addPayment(String cHName, String cardNumber, String expDatem,String expDatey, String cvv , String cusName,String cusContact){
				boolean isSuccess = false;
				
				try {
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					
					String sql = "insert into payments values (0,'"+cHName+"' ,'"+cardNumber+"','"+expDatem+"','"+expDatey+"','"+cvv+"','"+cusName+"','"+cusContact+"')";
					
					int result = stmt.executeUpdate(sql);
					
					if (result > 0) {
		    			isSuccess = true;
					}else {
						isSuccess = false;
					}
		    		
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
			}
			
			
			//--------------------------validate---------------------
			public static boolean validate(String cnum) {
				boolean isSuccess = false;
				
				int convertedID = Integer.parseInt(cnum);
				
				try {
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					String sql = "select * from payments where cardNumber ='"+convertedID+"'";
					result = stmt.executeQuery(sql);
					
					if(result.next() ) {
						isSuccess = true;
					}else {
						isSuccess = false;
					}
					
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
			}
			
			
			
			
			//--------------------------get pay---------------------
			public static List<PaymentModel> getPayment(String cNumber){
				//int convertedID = Integer.parseInt(cNumber);
				
				ArrayList<PaymentModel> payment = new ArrayList<>();
				
				try {
					
					conn = ConnectDB.getConnection(); 
					stmt = conn.createStatement();
					String sql = "select * from pizzahub_db.payments where cardNumber ='"+cNumber+"'";
					result = stmt.executeQuery(sql);
					
					
					while(result.next()){
						   int paymentID = result.getInt(1);
						   String cName = result.getString(2); 
						   String cardNumber = result.getString(3); 
						   String expDatem = result.getString(4); 
						   String expDatey = result.getString(5); 
						   String cvv = result.getString(6);
						   String cusName =result.getString(7);
						   String cusContact=result.getString(8);
						   
				  
						   PaymentModel pm = new PaymentModel(paymentID , cName ,cardNumber , expDatem,expDatey , cvv,cusName,cusContact); 
						   payment.add(pm); 
							  
					  } 
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return payment;
				
			}
			
			//------------------------get payment details----------------------
			public static List<PaymentModel> getPayDetails(String pmttID){
				
				int convertedID = Integer.parseInt(pmttID);
						
				ArrayList<PaymentModel> pmnt = new ArrayList<>();
				
				try {
					
					conn = ConnectDB.getConnection(); 
					stmt = conn.createStatement();
					String sql = "select * from payments where paymentID ='"+convertedID+"'";
					result = stmt.executeQuery(sql);
					
					
					while(result.next()){
							int paymentID = result.getInt(1);
						   String cName = result.getString(2); 
						   String cardNumber = result.getString(3); 
						   String expDatem = result.getString(4); 
						   String expDatey = result.getString(5); 
						   String cvv = result.getString(6);
						   String cusName =result.getString(7);
						   String cusContact=result.getString(8);
						   
				  
						   PaymentModel pm = new PaymentModel(paymentID , cName ,cardNumber , expDatem,expDatey , cvv,cusName,cusContact); 
						   pmnt.add(pm);
							  
					  } 
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return pmnt;
				
			}
			
			
			
			//-------------update---------------------------------------
			public static boolean updatePay(String paymentID, String cName, String cardNumber ,String expDatem ,String expDatey , String cvv) {
				boolean isSuccess = false;
				try {
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					String sql = "update payments set paymentID='"+paymentID+"' , cName='"+cName+"' , cardNumber='"+cardNumber+"' , expdatem='"+expDatem+"' ,expdatey='"+expDatey+"' , cvv='"+cvv+"'"  + "where paymentID='"+paymentID+"'";;
					int result = stmt.executeUpdate(sql);
					
					if(result > 0) {
						isSuccess = true;
					}else {
						isSuccess = false;
					}
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
			}
			
			
			
			
			
			//-------------delete----------------------------------------
			
			public static boolean deletePay(String pid) {
				boolean isSuccess = false;
				
				int convId = Integer.parseInt(pid);
			
				try {
					
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					
					String sql = "delete from payments where paymentID='"+convId+"'";
					int result = stmt.executeUpdate(sql);
					
					if(result > 0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
					
				}catch (Exception e) {
					e.printStackTrace();
				}
			
				return isSuccess;
			}
			
			
	}
