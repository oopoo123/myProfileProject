package com.hjp.home.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hjp.home.dao.BoardDao;
import com.hjp.home.dto.QAboardDto;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class BoardController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping(value = "/board")
	public String board(HttpServletRequest request, Model model) {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		List<QAboardDto> dtos = dao.listDao();
		
		model.addAttribute("list", dtos);
		
		return "list";
	}

}