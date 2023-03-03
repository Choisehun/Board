package com.my.ch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.ch.dto.PostDto;
import com.my.ch.mapper.Mapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardService implements OrderService {

	@Setter(onMethod_ = @Autowired)
	private Mapper mapper;
	
	@Override
	public void wrtie(PostDto postdto) {
		log.info("service write");
		mapper.wrtie(postdto);

		
	}
	

}
