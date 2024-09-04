package com.example.tlias.service;

import com.example.tlias.pojo.Dept;

import java.util.List;

public interface DeptService {

    List<Dept> selectAll();

    void deleteById(Integer id);

    void insert(Dept dept);

    void update(Dept dept);

    Dept selectById(Integer id);


}
