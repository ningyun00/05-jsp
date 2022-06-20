package ning.ying.servlet;

import com.google.gson.Gson;
import ning.ying.dao.CityDao;
import ning.ying.entity.City;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class CityServlet extends HttpServlet {
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
        //查省份id
        int pid = Integer.parseInt(req.getParameter("pid"));
        System.out.println("省份pid" + pid);
        List<City> list = CityDao.CityBYID(pid);
        //list 转换成 json格式
        Gson g = new Gson();
        String json = g.toJson(list);
        System.out.println("城市" + json);

        //响应
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter w = resp.getWriter();
        w.print(json);
    }
}
