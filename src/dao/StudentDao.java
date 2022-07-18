package dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.Student;
import java.util.List;

@Repository
@Mapper
public interface StudentDao {
    public List<Student> selectStudents();
    public int insertStudent(Student student);
    public int deleteStudent(int id);
    public int updateStudent(Student student);
    public Student selectStudentById(int id);
    public List<Student> findStudent(@Param("name") String name);
}
