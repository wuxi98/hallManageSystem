package com.nchu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nchu.entity.Msg;
import com.nchu.entity.Student;
import com.nchu.mapper.StudentMapper;
import com.nchu.service.service.StudentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Resource(name = "studentMapper")
	private  StudentMapper studentMapper;

	@Resource(name="studentService")
	private StudentService studentService;

	@ResponseBody
	@RequestMapping("/queryAll")
	public List<Student> queryAll(){


		List<Student> list =studentService.queryAll();
		for(Student student:list){
			System.out.println(student.toString());
	}
		return studentMapper.queryAll();
	}

	//从Excel表导入
	@ResponseBody
	@RequestMapping(value = "/loadFile", method = RequestMethod.POST)
	public void ajaxUploadExcel(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Boolean b = false;
		try {
			b = studentService.ajaxUploadExcel(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("主键冲突");
		}
		if (b == true)
			request.setAttribute("sMsg", "success");
		else
			request.setAttribute("sMsg", "failed");

		if (b != null && b == true) {
			request.setAttribute("Msg1", "success");
			//表示 更新成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>更新成功，3秒之后自动回到操作页面</h1>");
		} else {
			request.setAttribute("Msg1", "failed");
			//表示 更新成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>更新失败，3秒之后自动回到操作页面</h1>");
		}
		response.setHeader("refresh", "3;url=../mstp_107_tfcrown/SystemManagerStudent.jsp");
	}


	@RequestMapping("/query")
	@ResponseBody
	public Msg queryStudent(
			@Param("studentId") String studentId,
			@Param("studentName") String studentName,
			@Param("studentClass") String studentClass,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn
	) {
		Student student = new Student();
		student.setStudentId(studentId);
		student.setStudentName(studentName);
		student.setStudentClass(studentClass);
		System.out.println("接收到的数据：student：" + student);
		PageHelper.startPage(pn, 3);

		List<Student> list = studentService.queryStudent(student);

		System.out.println("控制层：查询：" + list);

		PageInfo page = new PageInfo<>(list, 3);
		//list 转 json
		return Msg.success().add("pageInfo", page);
	}

	@RequestMapping("/update")
	@ResponseBody
	public void updateStudent(@Param("studentId") String studentId,
							  @Param("studentName") String studentName,
							  @Param("studentClass") String studentClass,
							  @Param("defaultTime") Float defaultTime,
							  @Param("totalTime") Float totalTime,
							  HttpServletResponse response,
							  Model model) throws IOException {
		Student student = new Student();
		student.setStudentClass(studentClass);
		student.setStudentName(studentName);
		student.setStudentId(studentId);
		student.setTotalTime(Float.valueOf(totalTime));
		student.setDefaultTime(Float.valueOf(defaultTime));
		Boolean b = studentService.updateStudent(student);
		if (b != null && b == true) {
			model.addAttribute("msg2", "success");
			//表示 更新成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>上传成功，3秒之后自动回到操作页面</h1>");
		} else {
			model.addAttribute("msg2", "failed");
			//表示 更新成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>上传失败，3秒之后自动回到操作页面</h1>");
		}
		response.setHeader("refresh", "3;url=../mstp_107_tfcrown/SystemManagerStudent.jsp");
	}

	@RequestMapping("/delete")
	@ResponseBody
	public void updateStudent(@Param("studentId") String studentId,
							  @Param("studentClass") String studentClass,
							  HttpServletResponse response,
							  Model model) throws IOException {

		Boolean b = studentService.deleteStudent(studentId, studentClass);
		if (b != null && b == true) {
			model.addAttribute("msg3", "success");
			//表示 删除成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>删除成功，3秒之后自动回到操作页面</h1>");
		} else {
			model.addAttribute("msg3", "failed");
			//表示 删除成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>删除失败，3秒之后自动回到操作页面</h1>");
		}
		response.setHeader("refresh", "3;url=../mstp_107_tfcrown/SystemManagerStudent.jsp");

	}

	/**
	 *登录功能  如果登录成功 进入 hallManager页面
	 */
	@RequestMapping("/login")
	public String login(@RequestParam("id")String studentId,
						@RequestParam("password")String studentPassword,
						RedirectAttributes attr){
		Student sa = new Student();
		sa.setStudentId(studentId);
		sa.setStudentPassword(studentPassword);
		System.out.println("sa:"+sa);

		if (studentId==null)
			System.out.println("SystemManagerController ：账号为空");

		if (studentPassword==null){
			System.out.println("SystemManagerController ：密码为空");
		}

		Boolean login = studentService.login(sa);
		System.out.println(login);

		if (login){
			return "studentIndex";
		}else {
			//设置session前先清楚历史记录[前台实现]
			attr.addFlashAttribute ("msg", "用户名或密码错误！");
			System.out.println("msg:"+attr.getFlashAttributes());
		}

		return "redirect:../mstp_107_tfcrown/login.jsp";
	}





}
