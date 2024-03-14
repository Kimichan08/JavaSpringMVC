package entities;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

import org.springframework.security.core.userdetails.UserDetails;

//Lớp customzie userdetails để chứa đầy đủ thông tin người dùng

public class AccountDetails implements UserDetails {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Collection<? extends GrantedAuthority> authorities;

	private String email;

	private String password;

	private String username;

	private String avatar;

	private String phone;

	private boolean enabled;

	private boolean accountNonExpired;

	private boolean accountNonLocked;

	private boolean credentialsNonExpired;

	public AccountDetails() {

		super();

// TODO Auto-generated constructor stub

	}

	public AccountDetails(Collection<? extends GrantedAuthority> authorities, String email,
			String password, String username, String avatar, String phone, int active, boolean accountNonExpired,
			boolean accountNonLocked, boolean credentialsNonExpired) {
		super();
		this.authorities = authorities;
		this.email = email;
		this.password = password;
		this.username = username;
		this.avatar = avatar;
		this.phone = phone;
		this.enabled = active == 0 ? false : true;
		this.accountNonExpired = accountNonExpired;
		this.accountNonLocked = accountNonLocked;
		this.credentialsNonExpired = credentialsNonExpired;
	}

	public Collection<? extends GrantedAuthority> getAuthorities() {

		return authorities;

	}

	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {

		this.authorities = authorities;

	}

	public String getEmail() {

		return email;

	}

	public void setEmail(String email) {

		this.email = email;

	}

	public String getPassword() {

		return password;

	}

	public void setPassword(String password) {

		this.password = password;

	}

	public String getUsername() {

		return username;

	}

	public void setUsername(String username) {

		this.username = username;

	}

	public String getAvatar() {

		return avatar;

	}

	public void setAvatar(String avatar) {

		this.avatar = avatar;

	}

	public String getPhone() {

		return phone;

	}

	public void setPhone(String phone) {

		this.phone = phone;

	}

	public boolean isEnabled() {

		return enabled;

	}

	public void setEnabled(boolean enabled) {

		this.enabled = enabled;

	}

	public boolean isAccountNonExpired() {

		return accountNonExpired;

	}

	public void setAccountNonExpired(boolean accountNonExpired) {

		this.accountNonExpired = accountNonExpired;

	}

	public boolean isAccountNonLocked() {

		return accountNonLocked;

	}

	public void setAccountNonLocked(boolean accountNonLocked) {

		this.accountNonLocked = accountNonLocked;

	}

	public boolean isCredentialsNonExpired() {

		return credentialsNonExpired;

	}

	public void setCredentialsNonExpired(boolean credentialsNonExpired) {

		this.credentialsNonExpired = credentialsNonExpired;

	}
}