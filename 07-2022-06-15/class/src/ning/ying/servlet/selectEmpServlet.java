package ning.ying.servlet;

import ning.ying.dao.realize.RealizeEmpDao;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
        HttpSession session = req.getSession();
        ServletContext servletContext = session.getServletContext();
        try {
            RealizeEmpDao realizeEmpDao = new RealizeEmpDao();
            if (req.getParameter("nameObscure") != null) {
                //加载页面
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
                if (!"请输入页数".equals(req.getParameter("inputLimit"))) {
                    objectList = realizeEmpDao.Limit(Integer.parseInt(req.getParameter("inputLimit")), endLimit);
                    int oneLimit = Integer.parseInt(req.getParameter("inputLimit"));
                    req.setAttribute("oneLimit", oneLimit);
                    req.setAttribute("objectList", objectList);
                    req.setAttribute("bulkMaxRow", bulkMaxRow);
                    req.getRequestDispatcher("/index.jsp").forward(req, resp);
                } else {
                   printWriter.write("<script>alert('请输入跳转页数');location.href='/ning.ying/index.jsp';</script>");
                }
            } else if (req.getParameter("login") != null && "登录".equals(req.getParameter("login"))) {
                //登录
                String userName = req.getParameter("userName");
                String userPassword = req.getParameter("userPassword");
                if (RealizeEmpDao.userLogin(userName, userPassword)) {
                    //登录成功
                    session.setAttribute("userName", userName);
                    req.setAttribute("objectList", realizeEmpDao.select());
                    /*访问次数*/
                    if (servletContext.getAttribute("visitFrequency") == null) {
                        servletContext.setAttribute("visitFrequency", 1);
                    } else {
                        int visitFrequency = Integer.parseInt(String.valueOf(servletContext.getAttribute("visitFrequency")));
                        servletContext.setAttribute("visitFrequency", visitFrequency + 1);
                    }
                    //成功页面跳转
                    req.getRequestDispatcher("/index.jsp").forward(req, resp);
                } else {
                    //登录失败
                    resp.getWriter().write("<script>alert('用户名或密码错误！');location.href='login.jsp'</script>");
                }
            } else if (req.getParameter("exit") != null) {
                //退出
                session.removeAttribute("userName");
                session.invalidate();
                resp.getWriter().write("<script>alert('退出成功');location.href='login.jsp';</script>");
            } else {
                //没有数据直接访问
                resp.getWriter().write("<script>alert('无法访问');location.href='login.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
