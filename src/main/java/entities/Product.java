package entities;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product implements Serializable {
	@Id
	@Column(name = "proId")
	private String proId;

	@Column(name = "proName")
	private String proName;

	@Column(name = "price")
	private int price;

	@Column(name = "salePrice")
	private int salePrice;
	
	@Column(name = "image")
	private String image;

	@Column(name = "descriptions")
	private String descriptions;

	@Column(name = "quality")
	private int quality;

	@Column(name = "cateId")
	private int cateId;

	@Column(name = "status")
	private int status;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "cateId", insertable = false, updatable = false)
	private Category category;
	
	
	@OneToMany(mappedBy = "product")
	private Set<Cart> carts;

	public Set<Cart> getCarts() {
		return carts;
	}

	public void setCarts(Set<Cart> carts) {
		this.carts = carts;
	}

	public Product() {
		super();
	}

	public Product(String proId, String proName, int price, int salePrice, String image, String descriptions,
			int quality, int cateId, int status, Category category) {
		super();
		this.proId = proId;
		this.proName = proName;
		this.price = price;
		this.salePrice = salePrice;
		this.image = image;
		this.descriptions = descriptions;
		this.quality = quality;
		this.cateId = cateId;
		this.status = status;
		this.category = category;
	}

	public String getProId() {
		return proId;
	}

	public void setProId(String proId) {
		this.proId = proId;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	public int getQuality() {
		return quality;
	}

	public void setQuality(int quality) {
		this.quality = quality;
	}

	public int getCateId() {
		return cateId;
	}

	public void setCateId(int cateId) {
		this.cateId = cateId;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	
}
