package onclass.one.dao.Inter;

import onclass.one.entity.Students;

import java.util.List;

public interface StudentDaoInter {
    public abstract int add(Students students);

    public abstract int delete(int ID);

    public abstract List<Students> selectAll();
}
