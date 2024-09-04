package com.example.tlias.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Query {
    private String name;
    private Short gender;
    private LocalDate begin;
    private LocalDate end;
    private Integer page;
    private Integer pageSize;
    private Integer index;
}
