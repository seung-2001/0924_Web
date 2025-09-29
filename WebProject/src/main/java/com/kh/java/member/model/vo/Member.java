package com.kh.java.member.model.vo;

import java.sql.Date;

public class Member {

	// int vs long
	// log vs Long

	private Long userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private String address;
	private Date enrollDate;
	private Date modifiyDate;
	private String status;

	public Member() {
		super();
	}

	public Member(Long userNo, String userId, String userPwd, String userName, String eamil, String address,
			Date enrollDate, Date modifiyDate, String status) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.email = eamil;
		this.address = address;
		this.enrollDate = enrollDate;
		this.modifiyDate = modifiyDate;
		this.status = status;
	}

	public Long getUserNo() {
		return userNo;
	}

	public void setUserNo(Long userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String eamil) {
		this.email = eamil;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifiyDate() {
		return modifiyDate;
	}

	public void setModifiyDate(Date modifiyDate) {
		this.modifiyDate = modifiyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", eamil=" + email + ", enrollDate=" + enrollDate + ", modifiyDate=" + modifiyDate + ", status="
				+ status + "]";
	}

}
