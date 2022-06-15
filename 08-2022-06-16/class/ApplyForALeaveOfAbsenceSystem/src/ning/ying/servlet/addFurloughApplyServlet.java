package ning.ying.servlet;

import ning.ying.dao.FurloughApplyRealizeDao;
import ning.ying.entity.FurloughApply;

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
public class addFurloughApplyServlet extends HttpServlet {
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
            System.out.println(req.getParameter("fProposer"));
            if (req.getParameter("addFurloughApply") != null && "提交".equals(req.getParameter("addFurloughApply")) && req.getParameter("fProposer") != null) {
                //姓名
                String fProposer = req.getParameter("fProposer");
                //部门
                String fDept = req.getParameter("fDept");
                //请假日期
                String fApplyDate = req.getParameter("fApplyDate");
                //开始时间
                String fStartTime = req.getParameter("fStartTime").replace("T", " ");
                //结束时间
                String fLasTime = req.getParameter("fLasTime").replace("T", " ");
                String fType = req.getParameter("fType");
                SimpleDateFormat simpleDateFormatDate = new SimpleDateFormat("yyyy-MM-dd");
                Date ApplyDateF = simpleDateFormatDate.parse(fApplyDate);
                Date startF = simpleDateFormatDate.parse(fStartTime);
                Date endF = simpleDateFormatDate.parse(fLasTime);
                FurloughApplyRealizeDao furloughApplyRealizeDao = new FurloughApplyRealizeDao();
                int row = furloughApplyRealizeDao.addFurloughApply(new FurloughApply(fProposer, fDept, ApplyDateF, startF, endF, fType));
                if (row > 0) {
                    resp.getWriter().write("<script>alert('添加成功');location.href='index.jsp';</script>");
                } else {
                    resp.getWriter().write("<script>alert('添加失败');location.href='index.jsp';</script>");
                }
            } else {
                resp.getWriter().write("<script>alert('无法访问');location.href='index.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
