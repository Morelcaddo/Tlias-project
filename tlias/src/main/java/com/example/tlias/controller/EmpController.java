package com.example.tlias.controller;

import com.example.tlias.anno.Log;
import com.example.tlias.pojo.Emp;
import com.example.tlias.pojo.Query;
import com.example.tlias.pojo.Result;
import com.example.tlias.service.EmpService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@RequestMapping("/emps")
public class EmpController {
    @Autowired
    private EmpService empService;

    @GetMapping
    public Result select(Query query) {
        return Result.success(empService.select(query));
    }

    @GetMapping("/{id}")
    public Result selectById(@PathVariable Integer id) {
        return Result.success(empService.selectById(id));
    }

    @Log
    @DeleteMapping("/{ids}")
    public Result delete(@PathVariable List<Integer> ids) {
        empService.delete(ids);
        return Result.success();
    }

    @Log
    @PostMapping
    public Result insert(@RequestBody Emp emp) {
        empService.insert(emp);
        return Result.success();
    }

    @Log
    @PutMapping
    public Result update(@RequestBody Emp emp){
        empService.update(emp);
        return Result.success();
    }

}
