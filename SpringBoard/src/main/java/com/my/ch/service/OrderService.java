package com.my.ch.service;

import java.util.List;

import com.my.ch.dto.PostDto;

public interface OrderService {
	public void write(PostDto postdto);
	List<PostDto> getList();

}
