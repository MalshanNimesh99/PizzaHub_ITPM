package Order_Management;

public class OrderModel {

	private int idorder;
	private String name;
	private String address;
	private String telephone;
	private String flavour;
	private String type;
	private String size;
	private String cheese;
	private String instructions;
	
	public int getIdorder() {
		return idorder;
	}
	public void setIdorder(int idorder) {
		this.idorder = idorder;
	}
	
	public String getName() {
		return name;
	}
	public void getName(String name) {
		this.name = name;
	}
	
	public String getAddress() {
		return address;
	}
	public void getAddress(String address) {
		this.address = address;
	}
	
	public String getTelephone() {
		return telephone;
	}
	public void getTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	
	public String getFlavour() {
		return flavour;
	}
	public void setFlavour(String flavour) {
		this.flavour = flavour;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getCheese() {
		return cheese;
	}
	public void setCheese(String cheese) {
		this.cheese = cheese;
	}
	public String getInstructions() {
		return instructions;
	}
	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}
	public OrderModel(int idorder,String name,String address,String telephone, String flavour, String type, String size, String cheese, String instructions) {
		super();
		this.idorder = idorder;
		this.name = name;
		this.address = address;
		this.telephone = telephone;
		this.flavour = flavour;
		this.type = type;
		this.size = size;
		this.cheese = cheese;
		this.instructions = instructions;
	}
	public OrderModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "OrderModel [idorder=" + idorder + ",name=" + name + ",address=" + address + ",telephone=" + telephone + ", flavour=" + flavour + ", type=" + type + ", size=" + size
				+ ", cheese=" + cheese + ", instructions=" + instructions + "]";
	}
	
	
	
	
}
