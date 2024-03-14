package entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "accounts")
public class Account {
	@Id
	@Column(name = "accountid")
	private String accountid;

	@Column(name = "username")
	private String userName;

	@Column(name = "password")
	private String passWord;

	@Column(name = "email")
	private String email;
	
	@Column(name = "phone")
	private String phone;

	@Column(name = "avatar")
	private String avatar;

	@Column(name = "active")
	private int active;

	@OneToMany(mappedBy = "account", fetch = FetchType.EAGER)
    private Set<AccountRole> accountRoles;
	
	@OneToMany(mappedBy = "product")
	private Set<Cart> carts;

	public Set<Cart> getCarts() {
		return carts;
	}

	public void setCarts(Set<Cart> carts) {
		this.carts = carts;
	}

	public Account() {

// TODO Auto-generated constructor stub

	}
	

	public String getAccountid() {

		return accountid;

	}

	public void setAccountid(String accountid) {

		this.accountid = accountid;

	}

	public String getUserName() {

		return userName;

	}

	public void setUserName(String userName) {

		this.userName = userName;

	}

	public String getPassWord() {

		return passWord;

	}

	public void setPassWord(String passWord) {

		this.passWord = passWord;

	}

	public String getEmail() {

		return email;

	}

	public void setEmail(String email) {

		this.email = email;

	}

	public String getPhone() {

		return phone;

	}

	public void setPhone(String phone) {

		this.phone = phone;

	}

	public String getAvatar() {

		return avatar;

	}

	public void setAvatar(String avatar) {

		this.avatar = avatar;

	}

	public int getActive() {

		return active;

	}

	public void setActive(int active) {

		this.active = active;

	}


	public Set<AccountRole> getAccountRoles() {
		return accountRoles;
	}


	public void setAccountRoles(Set<AccountRole> accountRoles) {
		this.accountRoles = accountRoles;
	}
	
	
}
