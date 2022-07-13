package com.ning.servlet;

import com.ning.Tool.Tool;
import com.ning.dao.BookDao;
import com.ning.entity.Book;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.util.List;
import java.util.Map;

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
        int maxRow = line % Tool.limit == 0 ? line / Tool.limit : line / Tool.limit + 1;
        request.setAttribute("maxRow", maxRow);
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
                System.out.println(Integer.parseInt(String.valueOf(request.getParameter("id2"))));
                int id = Integer.parseInt(request.getParameter("id2"));
                bookArrayList = bookDao.selectBook();
                request.setAttribute("id", id);
                for (Book book : bookArrayList) {
                    if (book.getId() == id) {
                        PrintWriter printWriter = response.getWriter();
                        printWriter.write("{" + book.getIntroduce() + "},{1" + book.getImageName() + "},{2" + book.getImageContent() + "}");
                        break;
                    }
                }
            }
        } else if ("delete".equals(method)) {
            String[] str = request.getParameterValues("check");
            int row = bookDao.deleteBook(str);
            PrintWriter printWriter = response.getWriter();
            if (row > 0) {
                printWriter.write("<script>alert('删除成功');location.href='IndexServlet';</script>");
            } else {
                printWriter.write("<script>alert('删除失败');location.href='IndexServlet';</script>");
            }
        } else if ("updateId".equals(method)) {
            if (request.getParameter("id") != null) {
                Integer id = Integer.parseInt(String.valueOf(request.getParameter("id")));
                Book book = bookDao.selectBook(id);
                PrintWriter printWriter = response.getWriter();
                printWriter.write(String.valueOf(book));
            }
        } else if ("fileImages".equals(method)) {
            String id = request.getParameter("id");//编号
            String bookName = request.getParameter("bookName");
            String authorName = request.getParameter("authorName");
            String price = request.getParameter("price");
            String type = request.getParameter("type");
            String introduce = request.getParameter("introduce");
            String imgName = request.getParameter("imgName");
            String imageContent = request.getParameter("imageContent");//图片内容
            Book book = new Book();
            book.setId(Integer.parseInt(id));
            book.setBookName(bookName);
            book.setAuthorName(authorName);
            book.setPrice(Double.parseDouble(price));
            book.setBookType(Integer.parseInt(type));
            book.setIntroduce(introduce);
            book.setImageName(imgName);
            book.setImageContent(imageContent);
            int row = bookDao.updateBook(book);
            PrintWriter printWriter = response.getWriter();
            if (row > 0) {
                printWriter.write("<script>alert('修改成功');location.href='IndexServlet';</script>");
            } else {
                printWriter.write("<script>alert('修改失败');location.href='IndexServlet';</script>");
            }
        } else if ("search".equals(method)) {
            if (request.getParameter("searchConnect") != null) {
                String searchConnect = request.getParameter("searchConnect");
                Book book = new Book();
                book.setBookName(searchConnect);
                book.setAuthorName(searchConnect);
                List<Book> bookList = bookDao.selectBook(book);
                request.setAttribute("bookArrayList", bookList);
                request.setAttribute("type", Tool.type);
                request.setAttribute("id", 1);
                request.setAttribute("page", 1);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } else if ("add".equals(method)) {
            String bookName = request.getParameter("bookName");//书名
            String authorName = request.getParameter("bookName");//作者名
            String price = request.getParameter("bookName");//价格
            String type = request.getParameter("bookName");//书籍类型
            String imageContent = request.getParameter("imageContent");//图片
            String introduce = request.getParameter("introduce");//书籍描述
            if (bookName != null && authorName != null && price != null && type != null && imageContent != null && introduce != null) {
                double Price = Double.parseDouble(price);
                int Type = Integer.parseInt(type);
                Book book = new Book();
                book.setBookName(bookName);
                book.setAuthorName(authorName);
                book.setPrice(Price);
                book.setBookType(Type);
                book.setIntroduce(introduce);
                book.setImageContent(imageContent);
                int row = bookDao.addBook(book);
                PrintWriter printWriter = response.getWriter();
                if (row > 0) {
                    printWriter.write("<script>alert('添加成功');location.href='IndexServlet';</script>");
                } else {
                    printWriter.write("<script>alert('添加失败');location.href='IndexServlet';</script>");
                }
            }
        }
    }
}
