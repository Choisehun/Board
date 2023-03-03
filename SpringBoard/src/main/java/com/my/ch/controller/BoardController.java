package com.my.ch.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public void moveWrtie() {
		log.info("move:- wirtePage -");
	}
	
	@PostMapping("write")
	public void creatWrtie(PostDto postsdto) {
		log.info("start:- Controller write -");
		service.write(postsdto);
		log.info("end:- Controller write -");
	}
	
	@GetMapping("getList")
	public void boardList(@RequestParam("category") int category, Model model){
		log.info("start:- Controller List -" );
		model.addAttribute("list",service.getList());
		log.info("end:- Controller List -" );
		
	}
	
	
	
}
