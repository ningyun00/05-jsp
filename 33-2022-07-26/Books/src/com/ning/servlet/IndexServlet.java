package com.ning.servlet;

import com.ning.Tool.Tool;
import com.ning.dao.BookDao;
import com.ning.entity.Book;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * 主页服务
 */
@WebServlet(name = "IndexServlet", value = "/IndexServlet")
public class IndexServlet extends HttpServlet {
    public static BookDao bookDao = new BookDao();
    public static List<Book> bookArrayList = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("IndexServlet (主页服务) doGet ");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("IndexServlet (主页服务) doPost ");
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("IndexServlet (主页服务) service (服务) ");
        String method = request.getParameter("method");
        System.out.println(method);
        bookArrayList = bookDao.selectBook(1);
        int line = bookDao.selectRow();
        //最多分几页
        int maxRow = line% Tool.limit == 0 ? line / Tool.limit : line / Tool.limit + 1;
        request.setAttribute("maxRow",maxRow);
        if (method == null) {//加载
            request.setAttribute("bookArrayList", bookArrayList);
            request.setAttribute("type", Tool.type);
            request.setAttribute("id", 1);
            request.setAttribute("page", 1);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        if ("nextPage".equals(method)) {
            if (request.getParameter("page") != null) {
                int page = Integer.parseInt(request.getParameter("page"));
                bookArrayList = bookDao.selectBook(page);//第一页
                request.setAttribute("bookArrayList", bookArrayList);
                request.setAttribute("type", Tool.type);
                request.setAttribute("page", page);
                request.setAttribute("id", 1);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } else if ("intId".equals(method)) {
            if (request.getParameter("id2") != null) {
                System.out.println(Integer.parseInt(request.getParameter("id2")));
                int id = Integer.parseInt(request.getParameter("id2"));
                bookArrayList = bookDao.selectBook();
                request.setAttribute("id", id);
                for (Book book : bookArrayList) {
                    if (book.getId() == id) {
                        PrintWriter printWriter = response.getWriter();
                        printWriter.write("{" + book.getIntroduce() + "},{" + book.getImageName() + "}");
                        System.out.println("{" + book.getIntroduce() + "},{" + book.getImageName() + "}");
                        break;
                    }
                }
            }
        }
    }

    private void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("page") != null) {
            int page = Integer.parseInt(req.getParameter("page"));
            bookArrayList = bookDao.selectBook(page);//第一页
            System.out.println(page);
            req.setAttribute("bookArrayList", bookArrayList);
            System.out.println(bookArrayList);
            req.setAttribute("page", page);
            req.setAttribute("type", Tool.type);
            if (req.getParameter("id") == null) {
                req.setAttribute("id", 1);
            }
            int id = 1;
            if (req.getParameter("id") != null) {
                id = Integer.parseInt(req.getParameter("id"));
            }
            req.setAttribute("id", id);
            introduce(req, resp);
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }

    private void introduce(HttpServletRequest req, HttpServletResponse resp) throws IOException {

    }
}
