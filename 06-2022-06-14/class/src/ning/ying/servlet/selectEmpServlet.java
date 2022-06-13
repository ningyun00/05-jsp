package ning.ying.servlet;

import ning.ying.dao.realize.RealizeEmpDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * 查询
 */
public class selectEmpServlet extends HttpServlet {//查询

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    private static int endLimit = 10;//每次份十行
    private static final int maxRow = RealizeEmpDao.maxLimit();//最大行数
    private static List<Object> objectList = new ArrayList();//对象列表
    private static final RealizeEmpDao realizeEmpDao = new RealizeEmpDao();//数据操作对象

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter printWriter = resp.getWriter();
        try {
            RealizeEmpDao realizeEmpDao = new RealizeEmpDao();
            if (req.getParameter("nameObscure") != null) {
                String EName = req.getParameter("nameObscure");
                req.setAttribute("objectList", realizeEmpDao.obscure(EName));
                req.getRequestDispatcher("/index.jsp").forward(req, resp);
            }
            int bulkMaxRow = maxRow % endLimit == 0 ? maxRow / endLimit : maxRow / endLimit + 1;
            req.setAttribute("bulkMaxRow", bulkMaxRow);
            if (req.getParameter("next") != null) {
                /*下一页*/
                objectList = realizeEmpDao.Limit(Integer.parseInt(req.getParameter("next")), endLimit);
                int oneLimit = Integer.parseInt(req.getParameter("next"));
                req.setAttribute("oneLimit", oneLimit);
                req.setAttribute("objectList", objectList);
                req.setAttribute("bulkMaxRow", bulkMaxRow);
                req.getRequestDispatcher("/index.jsp").forward(req, resp);
            } else if (req.getParameter("Last") != null) {
                /*上一页*/
                objectList = realizeEmpDao.Limit(Integer.parseInt(req.getParameter("Last")), endLimit);
                int oneLimit = Integer.parseInt(req.getParameter("Last"));
                req.setAttribute("oneLimit", oneLimit);
                req.setAttribute("objectList", objectList);
                req.setAttribute("bulkMaxRow", bulkMaxRow);
                req.getRequestDispatcher("/index.jsp").forward(req, resp);
            } else if (req.getParameter("inputLimit") != null) {
                //指定页面
                objectList = realizeEmpDao.Limit(Integer.parseInt(req.getParameter("inputLimit")), endLimit);
                int oneLimit = Integer.parseInt(req.getParameter("inputLimit"));
                req.setAttribute("oneLimit", oneLimit);
                req.setAttribute("objectList", objectList);
                req.setAttribute("bulkMaxRow", bulkMaxRow);
                req.getRequestDispatcher("/index.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
