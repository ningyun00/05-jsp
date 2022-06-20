package ning.ying.servlet;

import com.google.gson.Gson;
import ning.ying.dao.ProvinceDao;
import ning.ying.entity.Province;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class ProvinceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        PrintWriter pipedWriter = resp.getWriter();
        //查省份
        List<Province> list = ProvinceDao.ProvinceList();
        //list 转换成 json格式
        Gson g = new Gson();
        String json = g.toJson(list);
        System.out.println("控制台打印：" + json);

        //响应
        PrintWriter w = resp.getWriter();
        w.print(json);
    }
}
