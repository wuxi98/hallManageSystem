package com.nchu.entity;

public class Hall {
	private String hallId;
	private Integer row;
	private Integer col;
	private Integer computerNumber;
	private String leader;
	private String hardwareInfo;
	private String softwareInfo;

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
	}

	public String getHardwareInfo() {
		return hardwareInfo;
	}

	public void setHardwareInfo(String hardwareInfo) {
		this.hardwareInfo = hardwareInfo;
	}

	public String getSoftwareInfo() {
		return softwareInfo;
	}

	public void setSoftwareInfo(String softwareInfo) {
		this.softwareInfo = softwareInfo;
	}

	public String getHallId() {
		return hallId;
	}

	public void setHallId(String hallId) {
		this.hallId = hallId;
	}

	public Integer getRow() {
		return row;
	}

	public void setRow(Integer row) {
		this.row = row;
	}

	public Integer getCol() {
		return col;
	}

	public void setCol(Integer col) {
		this.col = col;
	}

	public Integer getComputerNumber() {
		return computerNumber;
	}

	public void setComputerNumber(Integer computerNumber) {
		this.computerNumber = computerNumber;
	}

	@Override
	public String toString() {
		return "Hall{" +
				"hallId='" + hallId + '\'' +
				", row=" + row +
				", col=" + col +
				", computerNumber=" + computerNumber +
				", leader='" + leader + '\'' +
				", hardwareInfo='" + hardwareInfo + '\'' +
				", softwareInfo='" + softwareInfo + '\'' +
				'}';
	}
}
