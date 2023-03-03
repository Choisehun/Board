package com.my.ch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.ch.dto.PostDto;
import com.my.ch.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor	//필드 값을 매개 변수로 하는 생성자를 스프링이 알아서 만들어 줌. 그리고 그런 형태의 생성자를 추가하면 스프링이 알아서 객체관리 해줌(@Auto.. 처럼)
@Controller
public class BoardController {
	
	private BoardService service;
	
	
	@GetMapping("writepage")
	public void wrtie() {
		log.info("move:- wirtePage -");
	}
	
	@PostMapping("write")
	public void wrtie(PostDto postsdto) {
		log.info("start:- COntroller write -");
		service.wrtie(postsdto);
		log.info("end:- COntroller write -");
	}
		
	
}
