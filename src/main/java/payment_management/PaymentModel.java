package payment_management;

public class PaymentModel {
	
	private int paymentID;
	private String cName;
	private String cardNumber;
	private String expDatem;
	private String expDatey;
	private String cvv;
	private String cusName;
	private String cusContact;
	
	public int getPaymentID() {
		return paymentID;
	}
	public void setPaymentID(int paymentID) {
		this.paymentID = paymentID;
	}
	
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	
	
	public String getExpDatem() {
		return expDatem;
	}
	public void setExpDatem(String expDatem) {
		this.expDatem = expDatem;
	}
	public String getExpDatey() {
		return expDatey;
	}
	public void setExpDatey(String expDatey) {
		this.expDatey = expDatey;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	
	
	
	public String getCusName() {
		return cusName;
	}
	public void setCusName(String cusName) {
		this.cusName = cusName;
	}
	public String getCusContact() {
		return cusContact;
	}
	public void setCusContact(String cusContact) {
		this.cusContact = cusContact;
	}

	
	public PaymentModel(int paymentID, String cName, String cardNumber, String expDatem, String expDatey, String cvv,
			String cusName, String cusContact) {
		super();
		this.paymentID = paymentID;
		this.cName = cName;
		this.cardNumber = cardNumber;
		this.expDatem = expDatem;
		this.expDatey = expDatey;
		this.cvv = cvv;
		this.cusName = cusName;
		this.cusContact = cusContact;
	}
	@Override
	public String toString() {
		return "PaymentModel [paymentID=" + paymentID + ", cName=" + cName + ", cardNumber=" + cardNumber
				+ ", expDatem=" + expDatem + ", expDatey=" + expDatey + ", cvv=" + cvv + ", cusName=" + cusName
				+ ", cusContact=" + cusContact + "]";
	}
	public PaymentModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
