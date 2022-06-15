package ning.ying.test;

import ning.ying.dao.FurloughApplyRealizeDao;
import ning.ying.entity.FurloughApply;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class TestFurloughApply {
    public static void main(String[] args) {
        try {
            //目标将
            String stringDate = "2022-01-01T10:10:05";
            //转成sql date 2022-01-01 10:10:05
            java.sql.Date sqlDate = null;
            String stringDate1 = stringDate.replace("T", " ");
            System.out.println(stringDate1);//2022-01-01 10:10:05
            System.out.println(stringDate1.getClass().getName());//类型 java.lang.String
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            java.util.Date date = simpleDateFormat.parse(stringDate1);
            Timestamp timestamp = new Timestamp(date.getTime());
            System.out.println(timestamp);
            FurloughApplyRealizeDao furloughApplyRealizeDao = new FurloughApplyRealizeDao();
            furloughApplyRealizeDao.addFurloughApply(new FurloughApply("寜", "不知道", new java.util.Date(), new java.util.Date(), new java.util.Date(), "无"));

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
