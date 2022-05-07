package Order_Management;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class OrderUtil {
	
	private static boolean isSuccess;
	private static Connection con= null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	

	
	//validate 
public static boolean vali(String telephone) {
		try {
			con = ConnectDB.getConnection();
			stmt = con.createStatement();
			String sql="select * from pizzahub_db.order where telephone='"+telephone+"'";
			rs= stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	

//insert

	public static boolean insertorder(String name, String address, String telephone, String flavour, String type, String size, String cheese, String instructions ) {
		
		boolean isSuccess=false;
		
		try {
			con = ConnectDB.getConnection();
			stmt = con.createStatement();
			
			
			
			
			String sql="INSERT INTO pizzahub_db.order (name,address,telephone,flavour, type, size,cheese,instructions) values('"+name+"','"+address+"','"+telephone+"','"+flavour+"','"+type+"','"+size+"','"+cheese+"','"+instructions+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}	
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	  //retrieve
	
	  public static List<OrderModel> getOrderDetails(String namea){
	  
	  //int convertedID= Integer.parseInt(name);
	  
	  ArrayList<OrderModel> ord = new ArrayList<>();
	  
	  try {
	  
	  con= ConnectDB.getConnection(); stmt = con.createStatement(); 
	  String sql ="select * from pizzahub_db.order where name='"+namea+"'";
	  rs=stmt.executeQuery(sql);
	  
	  while(rs.next()) { 
		  int idorder= rs.getInt(1);
	  String name=rs.getString(2);
	  String address=rs.getString(3);
	  String telephone=rs.getString(4);
	  String flavour = rs.getString(5);
	  String type = rs.getString(6); 
	  String size=rs.getString(7);
	  String cheese=rs.getString(8);
	  String instructions=rs.getString(9);
	  
	  OrderModel o= new OrderModel(idorder,name,address,telephone,flavour,type,size,cheese,instructions);
	  ord.add(o); }
	  
	  }catch(Exception e){ e.printStackTrace(); }
	  
	  return ord; }
	 
	
	//retrieve
		
	  public static List<OrderModel> getOrderDetailst(String tp){
	  
	  //int convertedID= Integer.parseInt(name);
	  
	  ArrayList<OrderModel> ord = new ArrayList<>();
	  
	  try {
	  
	  con= ConnectDB.getConnection(); stmt = con.createStatement(); 
	  String sql ="select * from pizzahub_db.order where telephone='"+tp+"'";
	  rs=stmt.executeQuery(sql);
	  
	  while(rs.next()) { int idorder= rs.getInt(1);
	  String name=rs.getString(2);
	  String address=rs.getString(3);
	  String telephone=rs.getString(4);
	  String flavour = rs.getString(5);
	  String type = rs.getString(6); 
	  String size=rs.getString(7);
	  String cheese=rs.getString(8);
	  String instructions=rs.getString(9);
	  
	  OrderModel o= new OrderModel(idorder,name,address,telephone,flavour,type,size,cheese,instructions);
	  ord.add(o); }
	  
	  }catch(Exception e){ e.printStackTrace(); }
	  
	  return ord; }
	 
	
	  
	  
		//-------------update---------------------------------------
				public static boolean updateOrders(int idorder,String name, String address, String telephone, String flavour, String type, String size, String cheese, String instructions) {
					
					boolean isSuccess = false;
					try {
						con = ConnectDB.getConnection();
						stmt = con.createStatement();
						String sql = "update pizzahub_db.order set name='"+name+"' , address='"+address+"' , telephone='"+telephone+"' , flavour='"+flavour+"' , type='"+type+"', size='"+size+"',cheese='"+cheese+"',instructions='"+instructions+"'"+ "where idorder='"+idorder+"'";
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
		
				
			
		
		public static List<OrderModel> getOrdDetails(String telephon){
			
			//int convertedID= Integer.parseInt(deliveryID);
			
			ArrayList<OrderModel> ord = new ArrayList<>();
			
			try {
				
				con= ConnectDB.getConnection();
				stmt = con.createStatement();
				String sql = "select * from order where Telephone='"+telephon+"'";
				rs=stmt.executeQuery(sql);
				
				while(rs.next()) {
					int idorder= rs.getInt(1);
					  String name=rs.getString(2);
					  String address=rs.getString(3);
					  String telephone=rs.getString(4);
					  String flavour = rs.getString(5);
					  String type = rs.getString(6); 
					  String size=rs.getString(7);
					  String cheese=rs.getString(8);
					  String instructions=rs.getString(9);
					
					OrderModel o= new OrderModel(idorder,name,address,telephone,flavour, type, size,cheese,instructions);
					ord.add(o);
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}
			
			return ord;
		}
		
		//delete
		
		public static boolean deleteOrder(String idorder) {
			
			int convtid = Integer.parseInt(idorder);
			
			try {
				
				con= ConnectDB.getConnection();
				stmt= con.createStatement();
				String sql="delete from pizzahub_db.order where idorder='"+convtid+"'"; 
				int r= stmt.executeUpdate(sql);
				
				if(r>0) {
					isSuccess=true;
				}else {
					isSuccess=false;
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
			
		}
	  
	  
	
}




