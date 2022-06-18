package ning.ying.servlet;

import ning.ying.dao.Dao;
import ning.ying.entity.FurLoughApply;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 添加请假申请
 */
public class addFurServlet extends HttpServlet {
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
        try {
            if ("申请".equals(req.getParameter("submit"))) {
                String proposer = req.getParameter("proposer");
                String dept = req.getParameter("dept");
                String applyDate = req.getParameter("applyDate");
                String startTime = req.getParameter("startTime").replace("T", " ");
                String lastTime = req.getParameter("lastTime").replace("T", " ");
                String type = req.getParameter("type");
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date applyDate1 = simpleDateFormat.parse(applyDate);
                simpleDateFormat.applyPattern("yyyy-MM-dd HH:mm:ss");
                Date startTime1 = simpleDateFormat.parse(startTime);
                Date lastTime1 = simpleDateFormat.parse(lastTime);
               if ( Dao.addFur(new FurLoughApply(proposer, dept, applyDate1, startTime1, lastTime1, type))>0){
                   pipedWriter.write("<script>alert('添加成功');location.href='selectFurServlet';</script>");
               }else{
                   pipedWriter.write("<script>alert('添加失败');location.href='selectFurServlet';</script>");
               }
            } else {
                pipedWriter.write("<script>alert('无法访问');location.href='selectFurServlet';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
