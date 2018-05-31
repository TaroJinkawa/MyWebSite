package beans;

public class ItemDataBeans {

	private int id;
	private int categoryId;
	private String name;
	private String brand;
	private String detail;
	private int price;
	private String fileName;





	public ItemDataBeans(int id, int categoryId, String name, String brand, String detail, int price,String fileName) {
		this.id = id;
		this.categoryId = categoryId;
		this.name = name;
		this.brand = brand;
		this.detail = detail;
		this.price = price;
		this.fileName = fileName;

	}



	public ItemDataBeans(String fileName2, String name2, int price2) {
		this.fileName = fileName2;
		this.name = name2;
		this.price = price2;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getfileName() {
		return fileName;
	}
	public void setfileName(String fileName) {
		this.fileName = fileName;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}



}
