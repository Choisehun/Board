package com.my.ch.dto;

public class PostDto {

	 /** 
	  post_num INT(11) PRIMARY KEY AUTO_INCREMENT,
  user_id VARCHAR(50),
  title VARCHAR(100),
  content TEXT,
  created_at DATETIME,
  views INT(11),
  FOREIGN KEY (user_id) REFERENCES user(user_id)*/
	
	public int num;
	public String user_id;
	public String content;
	public String data;
	public int views;
	
	
}
