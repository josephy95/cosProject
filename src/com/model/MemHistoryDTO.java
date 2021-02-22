package com.model;

public class MemHistoryDTO {
	private String id;
	private String company;
	private String proName;
	private String rating;
	private String path;
	private String proNum;
	
	// �̷��� ����� ���� DTO
	public MemHistoryDTO(String proNum, String rating) {
		super();
		this.proNum = proNum;
		this.rating = rating;
	}
	
	
	
	// ȭ��ǰ ��ȸ�� ���� DTO
//	public MemHistoryDTO(String company, String proName, String path) {
//		super();
//		this.company = company;
//		this.proName = proName;
//		this.path = path;
//	}
	
	// ȭ��ǰ ��ȸ�� ���� DTO
	public MemHistoryDTO(String company, String proName, String path, String proNum) {
		super();
		this.company = company;
		this.proName = proName;
		this.path = path;
		this.proNum = proNum;
	}
	// ȸ�� �̷� ��ȸ�� ���� DTO
	public MemHistoryDTO(String proName, String rating, String proNum) {
		super();
		this.proName = proName;
		this.rating = rating;
		this.proNum = proNum;
	}


	public String getProNum() {
		return proNum;
	}

	public void setProNum(String proNum) {
		this.proNum = proNum;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getProName() {
		return proName;
	}


	public void setProName(String proName) {
		this.proName = proName;
	}


	public String getRating() {
		return rating;
	}


	public void setRating(String rating) {
		this.rating = rating;
	}
	
	
	
}
