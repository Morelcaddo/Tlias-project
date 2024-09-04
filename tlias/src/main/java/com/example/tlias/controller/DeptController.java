package com.example.tlias.controller;

import com.example.tlias.anno.Log;
import com.example.tlias.mapper.EmpMapper;
import com.example.tlias.pojo.Dept;
import com.example.tlias.pojo.Result;
import com.example.tlias.service.DeptService;
import com.example.tlias.service.EmpService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@Slf4j
@RequestMapping("/depts")
public class DeptController {

    @Autowired
    private DeptService deptService;
    @Autowired
    private EmpMapper empMapper;



    @GetMapping
    public Result selectAll() {
        List<Dept> deptList = deptService.selectAll();
        return Result.success(deptList);
    }

    @GetMapping("/{id}")
    public Result selectById(@PathVariable Integer id){
        return Result.success(deptService.selectById(id));
    }


    @Log
    @Transactional
    @DeleteMapping("/{id}")
    public Result deleteById(@PathVariable Integer id) {
        deptService.deleteById(id);
        empMapper.deleteByDeptId(id);
        return Result.success();
    }

    @Log
    @PostMapping
    public Result insert(@RequestBody Dept dept) {
        deptService.insert(dept);
        return Result.success();
    }

    @Log
    @PutMapping
    public Result update(@RequestBody Dept dept){
        deptService.update(dept);
        return Result.success();
    }


}
