package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Clazz;
import service.ClazzService;

@Controller
public class ClazzController {
    @Autowired
    ClazzService clazzService;

    @RequestMapping(value = "/toClazzIndex")
    public String root(Model model){
        model.addAttribute("clazzs", clazzService.getStudentCount());
        return "ClazzIndex";
    }

//    添加班级
    @RequestMapping(value = "/toInsertClazz")
    public String toInsertClazz(){
        return "insertClazz";
    }

    @RequestMapping(value = "insertClazz")
    public String insertClazz(Clazz clazz){
        clazzService.insertClazz(clazz);
        return "redirect:toClazzIndex";
    }

//    查询班级
    @RequestMapping(value = "/findClazz")
    public String findClazz(String cname, Model model){
        model.addAttribute("clazzs", clazzService.findClazz(cname));
        System.out.println(model);
        return "ClazzIndex";
    }

//    删除班级
    @RequestMapping(value = "/deleteClazz/{cid}")
    public String deleteClazz(Model model, @PathVariable int cid){
        clazzService.deleteClazz(cid);
        model.addAttribute("clazzs", clazzService.getStudentCount());
        return "ClazzIndex";
    }

//    更新班级名称
    @RequestMapping(value = "/toUpdateClazz/{cid}")
    public String toUpdateClazz(Model model,@PathVariable int cid){
        model.addAttribute("clazzs", clazzService.selectClazzsByCid(cid));
        return "updateClazz";
    }

    @RequestMapping(value = "/updateClazz")
    public String updateClazz(Clazz clazz){
        clazzService.updateClazz(clazz);
        return "redirect:toClazzIndex";
    }
}
