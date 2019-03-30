package com.nchu.entity;

import java.util.Date;

public class StudentLog {
	private String studentId;
	private String computerId;
	private String ip;
	private Date startTime;
	private Date endTime;
	private Integer isfree;

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getComputerId() {
		return computerId;
	}

	public void setComputerId(String computerId) {
		this.computerId = computerId;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Integer getIsfree() {
		return isfree;
	}

	public void setIsfree(Integer isFree) {
		this.isfree = isFree;
	}

	@Override
	public String toString() {
		return "StudentLog{" +
				"studentId='" + studentId + '\'' +
				", computerId='" + computerId + '\'' +
				", ip='" + ip + '\'' +
				", startTime=" + startTime +
				", endTime=" + endTime +
				", isfree=" + isfree +
				'}';
	}
}
