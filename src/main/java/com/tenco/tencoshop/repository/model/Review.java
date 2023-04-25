package com.tenco.tencoshop.repository.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class Review {

   private Integer id;
   private String content;
   private String reviewImg;
   private Integer userId;
   private Integer prodId;
   private Integer heart;
   private Timestamp createdAt;
   private String originFileName;
   private String uploadFileName;
   
}
