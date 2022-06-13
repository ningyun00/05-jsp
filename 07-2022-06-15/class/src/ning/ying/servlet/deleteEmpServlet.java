package ning.ying.servlet;

import ning.ying.dao.realize.RealizeEmpDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 删除
 */
public class deleteEmpServlet extends HttpServlet {//删除

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter printWriter = resp.getWriter();
        RealizeEmpDao realizeEmpDao = new RealizeEmpDao();
        if (req.getParameter("delete1_tbody1") != null) {//单条删除
            int EID = Integer.parseInt(req.getParameter("delete1_tbody1"));
            if (realizeEmpDao.delete(EID) > 0) {
                printWriter.write("<script>alert('删除成功');location.href='/ning.ying/index.jsp';</script>");
            } else {
                printWriter.write("<script>alert('删除失败');location.href='/ning.ying/index.jsp';</script>");
            }
        }
        if (req.getParameterValues("hobby") != null) {//批量删除
            if (realizeEmpDao.bulkDelete(req.getParameterValues("hobby"))) {
                printWriter.write("<script>alert('批量删除成功');location.href='/ning.ying/index.jsp';</script>");
            } else {
                printWriter.write("<script>alert('批量删除失败');location.href='/ning.ying/index.jsp';</script>");
            }
        } else {
            printWriter.write("<script>alert('请选择删除对象');location.href='/ning.ying/index.jsp';</script>");
        }
    }
}
