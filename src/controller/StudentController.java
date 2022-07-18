package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import pojo.Student;
import service.ClazzService;
import service.StudentService;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;

    @Autowired
    ClazzService clazzService;

    @RequestMapping(value = "/")
    public String root(Model model){
        model.addAttribute("students", studentService.selectStudents());
        return "StudentIndex";
    }

//    添加学生信息
    @RequestMapping(value = "/toInsertStudent")
    public String toInsertStudent(Model model){
        model.addAttribute("clazzs", clazzService.getStudentCount());
        return "insertStudent";
    }

    @RequestMapping(value = "/insertStudent")
    public String insertStudent(Student student, MultipartFile uploadPicture, HttpServletRequest request) throws IOException {
        String filename = uploadPicture.getOriginalFilename();
        String realpath = request.getServletContext().getRealPath("/");
        filename = UUID.randomUUID().toString()+filename.substring(filename.lastIndexOf("."));
        String path = realpath+"\\img/studentPictures\\"+filename;
        uploadPicture.transferTo(new File(path));
        student.setPicture(filename);
        studentService.insertStudent(student);
        return "redirect:/";
    }

//    删除学生信息
    @RequestMapping(value = "/deleteStudent/{id}")
    public String deleteStudent(@PathVariable int id){
        studentService.deleteStudent(id);
        return "redirect:/";
    }

//    更新学生信息
    @RequestMapping(value = "/toUpdateStudent/{id}")
    public String  toUpdateStudent(Model model, @PathVariable int id) {
        model.addAttribute("student", studentService.selectStudentById(id));
        return "updateStudent";
    }

    @RequestMapping(value = "updateStudent")
    public String updateStudent(Student student){
        studentService.updateStudent(student);
        return "redirect:/";
    }

//    模糊查询
    @RequestMapping("/findStudent")
    public String findStudent(Model model, String name){
        List<Student> students = studentService.findStudent(name);
        model.addAttribute("students",students);
        return "StudentIndex";
    }
}
