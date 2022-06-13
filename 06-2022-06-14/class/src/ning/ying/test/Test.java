package ning.ying.test;

import ning.ying.dao.realize.RealizeEmpDao;
import ning.ying.entity.Emp;

import java.util.Date;

public class Test {
    public static void main(String[] args) {
        RealizeEmpDao realizeEmpDao = new RealizeEmpDao();
        Date date = new Date();
        for (int i = 1; i <= 50; i++) {
            realizeEmpDao.add(new Emp("寜" + i, "女", "18573031245", date));
        }
    }
}
