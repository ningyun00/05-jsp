package onclass.dao.inter;

import onclass.entity.Teacher;

import java.util.List;

public interface TeacherDaoInter {
    int addTeacher(Teacher teacher);//增

    int deleteTeacher(int TID);//删

    List<Teacher> selectTeacher();//查

    int updateTeacher(Teacher teacher);//改
}
