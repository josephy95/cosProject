package com.model;

public class ReportDTO {
	private String id;
	private String company;
	private String proName;
	private String symptom;
	
	// �� ��Ͽ��� bad��� ��Ÿ�� ��ǰ�� ȸ�� �̸��� ��ǰ�̸�
	public ReportDTO(String company, String proName) {
		super();
		this.company = company;
		this.proName = proName;
	}

	

	// �˷��� ���� �μ�Ʈ
	public ReportDTO(String id, String company, String proName, String symptom) {
		super();
		this.id = id;
		this.company = company;
		this.proName = proName;
		this.symptom = symptom;
	}

	// �˷��� ���� ���
	public ReportDTO(String company, String proName, String symptom) {
		super();
		this.company = company;
		this.proName = proName;
		this.symptom = symptom;
	}



	public String getSymptom() {
		return symptom;
	}



	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getCompany() {
		return company;
	}



	public void setCompany(String company) {
		this.company = company;
	}



	public String getProName() {
		return proName;
	}



	public void setProName(String proName) {
		this.proName = proName;
	}



	
	
}
