package sp.in.backend;

public class menu_item {

	private int id;
	private String name;
	private double price;
	private String description;
	private String category;
	private String imageUrl;
	private String longDescription;
	private String sizes;

	// Constructor

	public menu_item(int id, String name, double price, String description, String category, String imageUrl,
			String longDescription, String sizes) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.description = description;
		this.category = category;
		this.imageUrl = imageUrl;
		this.longDescription = longDescription;
		this.sizes = sizes;
	}

	// Getters (JSP inhi ka use karega)
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}

	public double getPrice() {
		return price;
	}

	public String getDescription() {
		return description;
	}

	public String getCategory() {
		return category;
	}

	public String getImageUrl() {
		return imageUrl;
	}
	public String getLongDescription() {
		return longDescription;
	}
	
	public String getSizes() {
		return sizes;
	}
}