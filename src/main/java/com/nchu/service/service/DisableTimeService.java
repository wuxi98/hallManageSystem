package com.nchu.service.service;

import javax.servlet.http.HttpServletRequest;

public interface DisableTimeService {
	String add(HttpServletRequest request);
	String batchAdd(HttpServletRequest request);
}
