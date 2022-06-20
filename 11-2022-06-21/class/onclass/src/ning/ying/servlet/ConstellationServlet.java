package ning.ying.servlet;

import ning.ying.dao.ConstellationDao;
import ning.ying.entity.Constellation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class ConstellationServlet extends HttpServlet {
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
            if ("十二星座介绍".equals(req.getParameter("twelve"))) {
                List<Constellation> constellationArrayList = ConstellationDao.getContent();
                req.setAttribute("constellationArrayList", constellationArrayList);
                req.getRequestDispatcher("constellation.jsp").forward(req, resp);
            } else if (req.getParameter("CID") != null) {
                int CID = Integer.parseInt(req.getParameter("CID"));
                Constellation constellation = ConstellationDao.getContent(CID);
                String CContent = constellation.getCContent();
                pipedWriter.write(CContent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
