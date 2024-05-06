package dao;

import java.io.Serializable;

public class AuthUser implements Serializable {
	
    private static final long serialVersionUID = 1L; 

	private String username;
	private String userId;
	private String email;
	
	public AuthUser(String username,String userId,String email) {
		this.username = username;
		this.userId = userId;
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
}
