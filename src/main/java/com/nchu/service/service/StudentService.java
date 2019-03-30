package com.nchu.service.service;

import com.nchu.entity.Student;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Service
public interface StudentService {
	List<Student> queryAll();
	List<String> ajaxUploadExcelwx(HttpServletRequest request);
	boolean ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response);
	List<Student>  queryStudent(Student student);

	Boolean updateStudent(Student student);

	Boolean deleteStudent(String studentId,String studentClass);

	Boolean login(Student sa);

}
