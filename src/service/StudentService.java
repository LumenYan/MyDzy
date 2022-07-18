package service;

import dao.StudentDao;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Student;

import java.util.List;

@Service
public class StudentService {
    @Autowired
    StudentDao studentDao;

    public List<Student> selectStudents(){
        return studentDao.selectStudents();
    }

    public int insertStudent(Student student){
        return studentDao.insertStudent(student);
    }

    public int deleteStudent(int id){
        return studentDao.deleteStudent(id);
    }

    public int updateStudent(Student student){
        return studentDao.updateStudent(student);
    }

    public Student selectStudentById(int id){
        return studentDao.selectStudentById(id);
    }

    public List<Student> findStudent(@Param("name") String name){
        return studentDao.findStudent(name);
    }
}
