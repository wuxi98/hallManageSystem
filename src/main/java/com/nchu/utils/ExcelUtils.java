package com.nchu.utils;


import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.nchu.entity.DisableTime;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;

public class ExcelUtils {
    private final static String excel2003L = ".xls";    //2003- 版本的excel
    private final static String excel2007U = ".xlsx";   //2007+ 版本的excel

    /**
     * 描述：获取IO流中的数据，组装成List<List<Object>>对象
     *
     * @param in,fileName
     * @return
     * @throws IOException
     */
    public List<List<Object>> getBankListByExcel(InputStream in, String fileName) throws Exception {
        List<List<Object>> list = null;

        //创建Excel工作薄
        Workbook work = this.getWorkbook(in, fileName);
        if (null == work) {
            throw new Exception("创建Excel工作薄为空！");
        }
        Sheet sheet = null;  //页数
        Row row = null;  //行数
        Cell cell = null;  //列数

        list = new ArrayList<List<Object>>();
        //遍历Excel中所有的sheet
        for (int i = 0; i < work.getNumberOfSheets(); i++) {
            sheet = work.getSheetAt(i);
            if (sheet == null) {
                continue;
            }

            //遍历当前sheet中的所有行
            for (int j = sheet.getFirstRowNum(); j <= sheet.getLastRowNum(); j++) {
                row = sheet.getRow(j);
                if (row == null || row.getFirstCellNum() == j) {
                    continue;
                }

                //遍历所有的列
                List<Object> li = new ArrayList<Object>();
                for (int y = row.getFirstCellNum(); y < row.getLastCellNum(); y++) {
                    cell = row.getCell(y);
                    li.add(this.getValue(cell));
                }
                list.add(li);
            }
        }

        return list;

    }

    /**
     * 描述：根据文件后缀，自适应上传文件的版本
     *
     * @param inStr,fileName
     * @return
     * @throws Exception
     */
    public Workbook getWorkbook(InputStream inStr, String fileName) throws Exception {
        Workbook wb = null;
        String fileType = fileName.substring(fileName.lastIndexOf("."));
        if (excel2003L.equals(fileType)) {
            wb = new HSSFWorkbook(inStr);  //2003-
        } else if (excel2007U.equals(fileType)) {
            wb = new XSSFWorkbook(inStr);  //2007+
        } else {
            throw new Exception("解析的文件格式有误！");
        }
        return wb;
    }

    /**
     * 描述：对表格中数值进行格式化
     *
     * @param cell
     * @return
     */
    //解决excel类型问题，获得数值
    public String getValue(Cell cell) {
        String value = "";
        if (null == cell) {
            return value;
        }
        switch (cell.getCellType()) {
            //数值型
            case Cell.CELL_TYPE_NUMERIC:
                if (HSSFDateUtil.isCellDateFormatted(cell)) {
                    //如果是date类型则 ，获取该cell的date值
                    Date date = HSSFDateUtil.getJavaDate(cell.getNumericCellValue());
                    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                    value = format.format(date);
                    ;
                } else {// 纯数字
                    BigDecimal big = new BigDecimal(cell.getNumericCellValue());
                    value = big.toString();
                    //解决1234.0  去掉后面的.0
                    if (null != value && !"".equals(value.trim())) {
                        String[] item = value.split("[.]");
                        if (1 < item.length && "0".equals(item[1])) {
                            value = item[0];
                        }
                    }
                }
                break;
            //字符串类型
            case Cell.CELL_TYPE_STRING:
                value = cell.getStringCellValue().toString();
                break;
            // 公式类型
            case Cell.CELL_TYPE_FORMULA:
                //读公式计算值
                value = String.valueOf(cell.getNumericCellValue());
                if (value.equals("NaN")) {// 如果获取的数据值为非法值,则转换为获取字符串
                    value = cell.getStringCellValue().toString();
                }
                break;
            // 布尔类型
            case Cell.CELL_TYPE_BOOLEAN:
                value = " " + cell.getBooleanCellValue();
                break;
            default:
                value = cell.getStringCellValue().toString();
        }
        if ("null".endsWith(value.trim())) {
            value = "";
        }
        return value;
    }

    public List<DisableTime> ajaxUploadExcel(HttpServletRequest request) {
        System.out.println("进入服务层了");
        List<DisableTime> list=null;
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

        list=new ArrayList<>();

        SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd ");
        SimpleDateFormat dateformat1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       // date=dateformat.format(new Date());

        //遍历excel表

        String startTime="",endTime="";
        for (List<Object> aListObj : listObj) {
            //System.out.println("jin for");
            //System.out.println(listObj.get(i).get(1));
            DisableTime disableTime=new DisableTime();
            disableTime.setHallId(aListObj.get(0).toString());
            disableTime.setContent(aListObj.get(3).toString());
            switch (aListObj.get(2).toString()){
                case "1":startTime+=" 08:00:00";endTime+=" 09:40:00";break;
                case "2":startTime+=" 10:00:00";endTime+=" 11:40:00";break;
                case "3":startTime+=" 13:30:00";endTime+=" 15:10:00";break;
                case "4":startTime+=" 15:30:00";endTime+=" 17:10:00";break;
                case "5":startTime+=" 19:00:00";endTime+=" 20:40:00";break;
                case "6":startTime+=" 21:00:00";endTime+=" 22:40:00";break;
            }
            try {
                disableTime.setDay(dateformat.parse(aListObj.get(1).toString()));
                disableTime.setStartTime(dateformat1.parse(startTime));
                disableTime.setEndTime(dateformat1.parse(endTime));
            } catch (ParseException e) {
                e.printStackTrace();
            }

            list.add(disableTime);

        }

        return list;
    }
}


