package com.nchu.entity;

import java.util.Date;

public class HallManagerLog {
	private  String hallManagerId;
	private  Date startTime;
	private Date finishTime;
	private String ip;

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getHallManagerId() {
		return hallManagerId;
	}

	public void setHallManagerId(String hallManagerId) {
		this.hallManagerId = hallManagerId;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getFinishTime() {
		return finishTime;
	}

	public void setFinishTime(Date finishTime) {
		this.finishTime = finishTime;
	}

	@Override
	public String toString() {
		return "HallManagerLog{" +
				"hallManagerId='" + hallManagerId + '\'' +
				", startTime=" + startTime +
				", finishTime=" + finishTime +
				", ip='" + ip + '\'' +
				'}';
	}
}
