package com.nchu.entity;

public class Student {
	private String studentId;
	private String studentName;
	private String studentClass;
	private float defaultTime;
	private float totalTime;
	private String StudentPassword;

	public String getStudentPassword() {
		return StudentPassword;
	}

	public void setStudentPassword(String studentPassword) {
		StudentPassword = studentPassword;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentClass() {
		return studentClass;
	}

	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}

	public float getDefaultTime() {
		return defaultTime;
	}

	public void setDefaultTime(float defaultTime) {
		this.defaultTime = defaultTime;
	}

	public float getTotalTime() {
		return totalTime;
	}

	public void setTotalTime(float totalTime) {
		this.totalTime = totalTime;
	}

	@Override
	public String toString() {
		return "Student{" +
				"studentId='" + studentId + '\'' +
				", studentName='" + studentName + '\'' +
				", studentClass='" + studentClass + '\'' +
				", defaultTime=" + defaultTime +
				", totalTime=" + totalTime +
				'}';
	}
}
