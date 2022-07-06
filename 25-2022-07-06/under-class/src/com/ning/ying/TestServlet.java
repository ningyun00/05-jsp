package com.ning.ying;

import com.jspsmart.upload.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet(name = "TestServlet", value = "/TestServlet")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SmartUpload sul = new SmartUpload();
        sul.setCharset("utf-8");
//设置可上传图片的类型
        sul.setAllowedFilesList("jpg,bmp,png");
//设置可上传图片的最大值(单位是字节)
        sul.setMaxFileSize(1024 * 1024 * 10);//10M
//3、初始化信息
        sul.initialize(this.getServletConfig(), req, resp);
        String fileName = "";
        try {
//4、开始上传（加载），图片真正被加载到sul对象中
            sul.upload();
//5、得到图片对象
            Files files = sul.getFiles();
            File file = files.getFile(0);
//System.out.println(file.getFileName());
//6、为了防止图片被覆盖，给图片取一个新的名字，规则：当前系统时间+文件后缀名
            Date d = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            String format = sdf.format(d);
//format = SecurityUtils.md5Hex(format);
            fileName = format + "." + file.getFileExt();
//6、得到服务器地址（把文件保存在images文件）
            String path = this.getServletContext().getRealPath("images");
//System.out.println(path+"\\"+file.getFileName());
//7、保存图片
            file.saveAs(path + "\\" + fileName);
        } catch (Exception e) {
        }
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
