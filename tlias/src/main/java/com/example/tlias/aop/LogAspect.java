package com.example.tlias.aop;

import com.alibaba.fastjson.JSONObject;
import com.example.tlias.mapper.OperateLogMapper;
import com.example.tlias.pojo.OperateLog;
import com.example.tlias.pojo.Result;
import com.example.tlias.utils.JwtUtils;
import io.jsonwebtoken.Claims;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.Arrays;

@Slf4j
@Aspect
@Component
public class LogAspect {
    @Autowired
    private OperateLogMapper operateLogMapper;
    @Autowired
    private HttpServletRequest request;

    @Around("@annotation(com.example.tlias.anno.Log)")
    public Object recordLog(ProceedingJoinPoint joinPoint) throws Throwable {
        //获取当前登录员工的ID
        OperateLog operateLog = new OperateLog();
        String jwt = request.getHeader("token");
        Claims claims = JwtUtils.parseJWT(jwt);

        operateLog.setOperateUser((Integer) claims.get("id"));

        operateLog.setOperateTime(LocalDateTime.now());

        operateLog.setClassName(joinPoint.getClass().getName());

        operateLog.setMethodName(joinPoint.getSignature().getName());

        operateLog.setMethodParams(Arrays.toString(joinPoint.getArgs()));

        long begin = System.currentTimeMillis();

        Object result = joinPoint.proceed();

        long end = System.currentTimeMillis();

        operateLog.setReturnValue(JSONObject.toJSONString(result));

        operateLog.setCostTime(end-begin);

        operateLogMapper.insert(operateLog);

        return result;
    }

}
