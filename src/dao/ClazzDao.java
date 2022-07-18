package dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.Clazz;

import java.util.List;

@Repository
@Mapper
public interface ClazzDao {
    public List<Clazz> getStudentCount();
    public int insertClazz(Clazz clazz);
    public int deleteClazz(@Param("cid") int cid);
    public List<Clazz> findClazz(String cname);
    public int updateClazz(Clazz clazz);
    public Clazz selectClazzsByCid(int cid);
}
