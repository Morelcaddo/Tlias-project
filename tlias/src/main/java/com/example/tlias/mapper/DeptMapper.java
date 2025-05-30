package com.example.tlias.mapper;

import com.example.tlias.pojo.Dept;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface DeptMapper {

    @Select("select * from dept ")
    List<Dept> selectAll();

    @Delete("delete from dept where id = #{id}")
    void deleteById(Integer id);

    @Insert("insert into dept (name, create_time, update_time) " +
            "VALUES(#{name},#{createTime},#{updateTime})")
    void insert(Dept dept);


    void update(Dept dept);
    @Select("select * from dept where id = #{id}")
    Dept selectById(Integer id);
}
