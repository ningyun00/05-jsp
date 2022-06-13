package ning.ying.servlet;

import ning.ying.dao.realize.RealizeEmpDao;
import ning.ying.entity.Emp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

/**
 * 修改
 */
public class updateEmpServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {//修改
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter printWriter = resp.getWriter();
        try {
            int EID = Integer.parseInt(req.getParameter("EID"));
            String EName = req.getParameter("EName");
            String ESex = req.getParameter("ESex");
            String ETelephone = req.getParameter("ETelephone");
            String EHireDate = req.getParameter("EHireDate");
            System.out.println(req.getParameter("EHireDate"));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            RealizeEmpDao realizeEmpDao = new RealizeEmpDao();
            if (realizeEmpDao.update(new Emp(EID, EName, ESex, ETelephone, simpleDateFormat.parse(EHireDate))) > 0) {
                printWriter.write("<script>alert('修改成功');location.href='/ning.ying/index.jsp';</script>");
            } else {
                printWriter.write("<script>alert('修改失败');location.href='/ning.ying/index.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
