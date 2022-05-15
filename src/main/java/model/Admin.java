package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin")
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "username")
	private String adminUserName;

	@Column(name = "password")
	private String adminPassword;

	public Admin() {
		super();
	}

	public Admin(String adminUserName, String adminPassword) {
		this.adminUserName = adminUserName;
		this.adminPassword = adminPassword;
	}

	public Admin(int id, String adminUserName, String adminPassword) {
		super();
		this.id = id;
		this.adminUserName = adminUserName;
		this.adminPassword = adminPassword;
	}

	public String getAdminUserName() {
		return adminUserName;
	}

	public void setAdminUserName(String adminUserName) {
		this.adminUserName = adminUserName;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", adminUserName=" + adminUserName + ", adminPassword=" + adminPassword + "]";
	}

}
