package com.ning.ying.servlet;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.ning.ying.alipay.config.AlipayConfig;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PricesServlet", value = "/PricesServlet")
public class PricesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// 接收请求值
        String oid = request.getParameter("ordered");// 订单号
        String money = request.getParameter("money");// 金额

        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.URL, AlipayConfig.APPID, AlipayConfig.RSA_PRIVATE_KEY, AlipayConfig.FORMAT, AlipayConfig.CHARSET, AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.SIGNTYPE);
        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = oid;
        //付款金额，必填
        String total_amount = money;
        //订单名称，必填
        String subject = oid;
        //商品描述，可空
        String body = "商品描述";

        alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
                + "\"total_amount\":\""+ total_amount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //请求
        String result;
        try {
            result = alipayClient.pageExecute(alipayRequest).getBody();
            response.setContentType("text/html;charset=" + AlipayConfig.CHARSET);
            response.getWriter().write(result);//直接将完整的表单html输出到页面
            response.getWriter().flush();
            response.getWriter().close();
            // 设置 session 对象传递 oId（订单号）
            HttpSession session = request.getSession();
            session.setAttribute("oId", oid);
        } catch (AlipayApiException e) {
            e.printStackTrace();
            response.getWriter().write("捕获异常出错");
            response.getWriter().flush();
            response.getWriter().close();
        }
    }
}
