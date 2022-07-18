package service;

import dao.ClazzDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Clazz;

import java.util.List;

@Service
public class ClazzService {
    @Autowired
    ClazzDao clazzDao;

    public int insertClazz(Clazz clazz){
        return clazzDao.insertClazz(clazz);
    }
    public int deleteClazz(int cid){
        return clazzDao.deleteClazz(cid);
    }
    public List<Clazz> getStudentCount(){
        return clazzDao.getStudentCount();
    }
    public List<Clazz> findClazz(String cname){
        return clazzDao.findClazz(cname);
    }
    public int updateClazz(Clazz clazz){
        return clazzDao.updateClazz(clazz);
    }
    public Clazz selectClazzsByCid(int cid){
        return clazzDao.selectClazzsByCid(cid);
    }
}
