package com.nchu.service.impl;

import com.nchu.entity.Student;
import com.nchu.mapper.StudentMapper;
import com.nchu.service.service.StudentService;
import com.nchu.utils.ExcelUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

    @Resource(name="studentMapper")
    private StudentMapper studentMapper;

    @Override
    public List<Student> queryAll() {
        return studentMapper.queryAll();
    }

    @Override
    public List<String> ajaxUploadExcelwx(HttpServletRequest request) {
        System.out.println("进入服务层了");
        List<String> studentIdList=null;
        MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest) request;
        MultipartFile file = mRequest.getFile("file");
       /* System.out.println("文件：");
        System.out.println(file);*/
        if (file.isEmpty()) {
            try {
                throw new Exception("文件不存在！");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        InputStream in = null;
        try {
            in = file.getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }

        //获取Excel表对象  类型是List<List<Object>>
        List<List<Object>> listObj = null;
        try {
            listObj = new ExcelUtils().getBankListByExcel(in, file.getOriginalFilename());
        } catch (Exception e) {
            e.printStackTrace();
        }

        for (int i = 0; i < listObj.size(); i++) {
            //显示表中的数据
            //System.out.println(listObj.get(i));
        }

        studentIdList=new ArrayList<>();
        //遍历excel表
        for (List<Object> aListObj : listObj) {
            //System.out.println("jin for");
            //System.out.println(listObj.get(i).get(1));
            studentIdList.add((String) aListObj.get(1));

        }
            //获取到  每个元组  即单条学生数据
            /*List<Object> lo = listObj.get(i);

            List<String> rowIdList = new ArrayList();
            String rowId = String.valueOf(lo.get(0));
            //获取到每个元组里的信息   并且 封装 到 bean里面
            Student vo = new Student();
            vo.setStudentId(String.valueOf(lo.get(1)));
            vo.setStudentName(String.valueOf(lo.get(2)));
            vo.setStudentClass(String.valueOf(lo.get(3)));
            vo.setDefaultTime(Float.valueOf(String.valueOf(lo.get(4))));
            vo.setTotalTime(Float.valueOf(String.valueOf(lo.get(5))));

            //判断数据的合法性
            Boolean illegal = isIllegal(vo);
            if (!illegal) {
                //如果数据不合法  就 跳过数据库操作  并记录 错误数据的行号
                rowIdList.add(rowId);
                System.out.println("错误数据：" + rowIdList);
            } else {
                Student j = null;
                try {
                    //这里判断  数据库 的学生表中  是否  已经  有了  该学生
                    j = studentMapper.selectByPrimaryKey(String.valueOf(lo.get(0)));
                } catch (NumberFormatException e) {
                    System.out.println("数据库中无该条数据，新增");
                }
                if (j == null) {
                    //数据库中没有  就添加
                    studentMapper.insert(vo);
                    System.out.println("insert success");
                } else {
                    //数据库中有就更新
                    studentMapper.updateByPrimaryKey(vo);
                }
            }
        }*/
            /*for(String s:studentIdList)
            {
                System.out.println(s);
            }*/
        return studentIdList;
    }

    //检查Excel表的数据是否合法
    private Boolean isIllegal(Student student) {
        //合法规则   学号、姓名、班级  为必填
        String id = student.getStudentId();
        String name = student.getStudentName();
        String studentClass = student.getStudentClass();

        if (id == null || name == null || studentClass == null)
            return false;
        else if ("".equals(id) || "".equals(name) || "".equals(studentClass))
            return false;
        else if (id.trim().length() != 8||studentClass.trim().length()!=6)
            return false;
        return true;
    }


    @Override
    public boolean ajaxUploadExcel(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("进入服务层了");
        MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest) request;
        MultipartFile file = mRequest.getFile("file");
        if (file.isEmpty()) {
            try {
                throw new Exception("文件不存在！");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        InputStream in = null;
        try {
            in = file.getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }

        //获取Excel表对象  类型是List<List<Object>>
        List<List<Object>> listObj = null;
        try {
            listObj = new ExcelUtils().getBankListByExcel(in, file.getOriginalFilename());
        } catch (Exception e) {
            e.printStackTrace();
        }

        for (int i = 0; i < listObj.size(); i++) {
            //显示表中的数据
            System.out.println(listObj.get(i));
        }

        //遍历excel表
        for (int i = 0; i < listObj.size(); i++) {
            //获取到  每个元组  即单条学生数据
            List<Object> lo = listObj.get(i);

            List<String> rowIdList = new ArrayList();
            String rowId = String.valueOf(lo.get(0));
            //获取到每个元组里的信息   并且 封装 到 bean里面
            Student vo = new Student();
            vo.setStudentId(String.valueOf(lo.get(1)));
            vo.setStudentName(String.valueOf(lo.get(2)));
            vo.setStudentClass(String.valueOf(lo.get(3)));
            vo.setDefaultTime(Float.valueOf(String.valueOf(lo.get(4))));
            vo.setTotalTime(Float.valueOf(String.valueOf(lo.get(5))));

            System.out.println("11111111111"+vo.toString());
            //判断数据的合法性
            Boolean illegal = isIllegal(vo);
            if (!illegal) {
                //如果数据不合法  就 跳过数据库操作  并记录 错误数据的行号
                rowIdList.add(rowId);
                System.out.println("错误数据：" + rowIdList);
            } else {
                Student j = null;
                try {
                    //这里判断  数据库 的学生表中  是否  已经  有了  该学生
                    j = studentMapper.selectByPrimaryKey(String.valueOf(lo.get(0)));
                } catch (NumberFormatException e) {
                    System.out.println("数据库中无该条数据，新增");
                }
                if (j == null) {
                    //数据库中没有  就添加
                    studentMapper.insert(vo);
                    System.out.println("insert success");
                } else {
                    //数据库中有就更新
                    studentMapper.updateByPrimaryKey(vo);
                }
            }
        }
        return true;
    }


    @Override
    public Boolean updateStudent(Student student) {
        return studentMapper.updateByPrimaryKey(student);
    }

    @Override
    public Boolean deleteStudent(String studentId, String studentClass) {
        return studentMapper.delete(studentId,studentClass);
    }

    //检查Excel表的数据是否合法

    @Override
    public Boolean login(Student sa) {
        Student student = studentMapper.login(sa);
        if (student!=null)
            return true;
        return false;
    }


    @Override
    public List<Student> queryStudent(Student student) {
        return studentMapper.query(student);
    }
}
