package beans;

import java.util.List;

import dao.UserDao;

public class BuyDataBeans {


	private String buyId;
	private String userId;
	private String deliveryId;
	private String totalPrice;
	private String buyDate;

	private List<ItemDataBeans> buytDetails;

	public BuyDataBeans(String buyId, String userId,String totalPrice,  String deliveryId, String buyDate) {
		this.buyId = buyId;
		this.userId = userId;
		this.totalPrice = totalPrice;
		this.deliveryId = deliveryId;
		this.buyDate = buyDate;
	}

	public String getBuyId() {
		return buyId;
	}
	public void setBuyId(String buyId) {
		this.buyId = buyId;
	}
	public String getDeliveryId() {
		return deliveryId;
	}
	public void setDeliveryId(String deliveryId) {
		this.deliveryId = deliveryId;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}

	public List<ItemDataBeans> getBuytDetails() {
		UserDao dao = new UserDao();
		List<ItemDataBeans> detailList = dao.buyDetailByBuyid(this.buyId);
		return detailList;
	}


}
