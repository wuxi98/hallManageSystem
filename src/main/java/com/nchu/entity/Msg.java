package com.nchu.entity;


/**

 * 通用的返回类
 * @author LvChaoZhang
 *
 */


import java.util.HashMap;
import java.util.Map;

public class Msg {
        //状态码0成功 1失败
        private int code;
        //提示信息
        private String msg;
        //用户要返回给游览器的数据
        private Map<String, Object> data=new HashMap<String, Object>();

        public static Msg success() {
        Msg result = new Msg();
        result.setCode(0);
        result.setMsg("处理成功");
        return result;
    }

    public static Msg fail() {
        Msg result = new Msg();
        result.setCode(1);
        result.setMsg("失败");
        return result;
    }

    public Msg add(String key, Object value) {
        this.getData().put(key, value);
        return this;
    }


    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getData() {
        return data;
    }

    public void setData(Map<String, Object> data) {
        this.data = data;
    }


}

