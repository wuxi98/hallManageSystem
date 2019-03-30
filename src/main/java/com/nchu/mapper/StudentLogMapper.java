package com.nchu.mapper;

import com.nchu.entity.StudentLog;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("studentLogMapper")
public interface StudentLogMapper {
	List<StudentLog> queryAll();
	boolean insert(@Param("studentLog") StudentLog studentLog);
	boolean offComputerUpdate(String computerId);

	/**
	 * 对机房所有机器下机
	 * @param hallId
	 * @return
	 */
	int offComputerAll(String hallId);

	/**
	 * 查询当前机器在线的学生id,
	 */
	StudentLog queryStudentId(String computerId);

	void changeComputer(@Param("computerId1") String computerId1, @Param("computerId2") String computerId2);

	List<StudentLog> query(@Param("studentLog")StudentLog studentLog,
						   @Param("studentName")String studentName,
						   @Param("hallId")String hallId);


	Integer getStudentNum(@Param("ms") long ms, @Param("hallId") String hallId);

	Integer getStudy(@Param("i") double i, @Param("clazz") String clazz);

}
