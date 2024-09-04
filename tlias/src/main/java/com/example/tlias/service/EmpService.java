package com.example.tlias.service;

import com.example.tlias.pojo.Emp;
import com.example.tlias.pojo.PageBean;
import com.example.tlias.pojo.Query;

import java.util.List;

public interface EmpService {
    PageBean select(Query query);
    Emp selectById(Integer id);
    void delete(List<Integer> ids);
    void insert(Emp emp);
    void update(Emp emp);

    Emp login(Emp emp);
}
