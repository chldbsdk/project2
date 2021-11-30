package order;

import java.io.Serializable;
import java.util.Date;


public class orderDTO implements Serializable{
	private static final long serialVersionUID = 1L;
	private String productId;
	private String productName;
	private int price;
	private String productDist;
	private String productInfo;
	private String fullname;
	
	private String userid;
	private String username;
	private String email;
	private int tel;
	private String useraddress;
	private String postcode;
	
	private String selected_Opt;
	private String order_Qty;
	private Date orderDate;
	private int orderId;
	private int order_seq_num;
	private Date billingDate;
	private String deliver_msg;
	private int deliver_situ;
	private int totalAmount;
	private String cal_info;

	public OrderDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public OrderDTO(String productId, String productName, int price, String productDist, String productInfo,
			String fullname, String userid, String username, String email, int tel, String useraddress, String postcode,
			String selected_Opt, String order_Qty, Date orderDate, int orderId, int order_seq_num,
			Date billingDate, String deliver_msg, int deliver_situ, int totalAmount) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.productDist = productDist;
		this.productInfo = productInfo;
		this.fullname = fullname;
		this.userid = userid;
		this.username = username;
		this.email = email;
		this.tel = tel;
		this.useraddress = useraddress;
		this.postcode = postcode;
		this.selected_Opt = selected_Opt;
		this.order_Qty = order_Qty;
		this.orderDate = orderDate;
		this.orderId = orderId;
		this.order_seq_num = order_seq_num;
		this.billingDate = billingDate;
		this.deliver_msg = deliver_msg;
		this.deliver_situ = deliver_situ;
		this.totalAmount = totalAmount;
	}
	
	

	public OrderDTO(String productId, String productName, int price, String productDist, String productInfo,
			String fullname, String userid, String username, String email, int tel, String useraddress, String postcode,
			String selected_Opt, String order_Qty, Date orderDate, int orderId, int order_seq_num,
			Date billingDate, String deliver_msg, int deliver_situ, int totalAmount, String cal_info) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.productDist = productDist;
		this.productInfo = productInfo;
		this.fullname = fullname;
		this.userid = userid;
		this.username = username;
		this.email = email;
		this.tel = tel;
		this.useraddress = useraddress;
		this.postcode = postcode;
		this.selected_Opt = selected_Opt;
		this.order_Qty = order_Qty;
		this.orderDate = orderDate;
		this.orderId = orderId;
		this.order_seq_num = order_seq_num;
		this.billingDate = billingDate;
		this.deliver_msg = deliver_msg;
		this.deliver_situ = deliver_situ;
		this.totalAmount = totalAmount;
		this.cal_info = cal_info;
	}

+ getters and setters 
+ hashcode and equals