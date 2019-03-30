package com.nchu.entity;

import java.util.Date;

public class DisableTime {
	private String hallId;
	private Date day;
	private Date startTime;
	private Date endTime;
	private String content;

	public Date getDay() {
		return day;
	}

	public void setDay(Date day) {
		this.day = day;
	}

	public String getHallId() {
		return hallId;
	}

	public void setHallId(String hallId) {
		this.hallId = hallId;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "DisableTime{" +
				"hallId='" + hallId + '\'' +
				", day=" + day +
				", startTime=" + startTime +
				", endTime=" + endTime +
				", content='" + content + '\'' +
				'}';
	}
}
