package com.nchu.mapper;

import com.nchu.entity.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("studentMapper")
public interface StudentMapper {
	/**
	 * 查询学习表所有数据
	 * @return
	 */
	List<Student> queryAll();

	/**
	 * 通过传入的对象参数查询符合要求的学生
	 * @param student
	 * @return
	 */
	List<Student> query(Student student);
	void insert(Student student);

	/**
	 * 按主键更新
	 * @param student
	 */
	boolean updateByPrimaryKey(Student student);

	/**
	 * 按主键查询
	 * @param StudentId
	 * @return
	 */
	Student selectByPrimaryKey(String StudentId);

	Student login(Student student);

	/**
	 * 获取当前学生状态
	 * 若正在上机，则返回true
	 */
	int studentStatus(String studentId);

	List<Student>  queryStudent(Student student);

	Boolean updateStudent(Student student);

	Boolean deleteStudent(String studentId,String studentClass);
	Boolean delete(@Param("studentId") String studentId, @Param("studentClass") String studentClass);

}
