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
 * 添加
 */
public class addEmpServlet extends HttpServlet {//添加

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter printWriter = resp.getWriter();
        //请求
        try {
            if (req.getParameter("EName") != null && req.getParameter("ESex") != null && req.getParameter("ETelephone") != null && req.getParameter("EHireDate") != null) {
                String EID = req.getParameter("EID");
                String EName = req.getParameter("EName");
                String ESex = req.getParameter("ESex");
                String ETelephone = req.getParameter("ETelephone");
                String EHireDate = req.getParameter("EHireDate");
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                if (EID != null && EName != null && ESex != null && ETelephone != null && EHireDate != null) {
                    int ID = Integer.parseInt(EID);
                    RealizeEmpDao realizeEmpDao = new RealizeEmpDao();
                    if (realizeEmpDao.add(new Emp(ID, EName, ESex, ETelephone, simpleDateFormat.parse(EHireDate))) > 0) {
                        printWriter.write("<script>alert('添加成功');location.href='/ning.ying/index.jsp';</script>");
                    } else {
                        printWriter.write("<script>alert('添加失败');location.href='/ning.ying/index.jsp';</script>");
                    }
                }
            }else{
                //没有数据直接访问
                resp.getWriter().write("<script>alert('无法访问');location.href='login.jsp';</script>");
            }
        } catch (Exception e) {
            printWriter.write("<script>alert('添加失败');location.href='/ning.ying/index.jsp';</script>");
        }
    }
}
