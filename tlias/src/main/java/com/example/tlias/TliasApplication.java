package com.example.tlias;

import com.example.tlias.controller.DeptController;
import com.example.tlias.service.DeptService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.xml.sax.*;

import javax.xml.parsers.SAXParser;
import java.util.HashMap;


@ServletComponentScan
@SpringBootApplication
public class TliasApplication {

    public static void main(String[] args) {
        SpringApplication.run(TliasApplication.class, args);
    }


}
