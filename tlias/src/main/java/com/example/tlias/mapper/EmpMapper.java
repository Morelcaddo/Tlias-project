package com.example.tlias.mapper;

import com.example.tlias.pojo.Emp;
import com.example.tlias.pojo.Query;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface EmpMapper {
    List<Emp> select(Query query);
    Long count(Query query);
    void delete(List<Integer> ids);

    @Insert("insert into emp (username, name, gender, image, dept_id, entrydate, job, create_time,update_time) " +
            "VALUES(#{username},#{name},#{gender},#{image},#{deptId},#{entrydate},#{job},#{createTime},#{updateTime})")
    void insert(Emp emp);


    void update(Emp emp);

    @Select("select * from emp where id = #{id}")
    Emp selectById(Integer id);

    @Select("select * from emp where username = #{username} and password = #{password}")
    Emp selectByNameAndPassword(Emp emp);
    @Delete("delete from emp where dept_id = #{deptId}")
    void deleteByDeptId(Integer deptId);
}
