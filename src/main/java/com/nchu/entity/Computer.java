package com.nchu.entity;

public class Computer {
	private  String computerId;
	private  String hallId;
	private  float usedTime;
	private  float banTime;
	private  String ip;
	private  String computerStatus;
	private Integer x;
	private Integer y;

	public Integer getX() {
		return x;
	}

	public void setX(Integer x) {
		this.x = x;
	}

	public Integer getY() {
		return y;
	}

	public void setY(Integer y) {
		this.y = y;
	}

	public String getComputerId() {
		return computerId;
	}

	public void setComputerId(String computerId) {
		this.computerId = computerId;
	}

	public String getHallId() {
		return hallId;
	}

	public void setHallId(String hallId) {
		this.hallId = hallId;
	}

	public float getUsedTime() {
		return usedTime;
	}

	public void setUsedTime(float usedTime) {
		this.usedTime = usedTime;
	}

	public float getBanTime() {
		return banTime;
	}

	public void setBanTime(float banTime) {
		this.banTime = banTime;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getcomputerStatus() {
		return computerStatus;
	}

	public void setcomputerStatus(String computerStatus) {
		this.computerStatus = computerStatus;
	}

	@Override
	public String toString() {
		return "Computer{" +
				"computerId='" + computerId + '\'' +
				", hallId='" + hallId + '\'' +
				", usedTime=" + usedTime +
				", banTime=" + banTime +
				", ip='" + ip + '\'' +
				", computerStatus='" + computerStatus + '\'' +
				'}';
	}
}
