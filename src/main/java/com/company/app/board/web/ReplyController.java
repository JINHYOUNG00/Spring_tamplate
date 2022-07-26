package com.company.app.board.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.company.app.board.mapper.ReplyMapper;
import com.company.app.board.service.ReplyVO;

@RestController
public class ReplyController {
@Autowired ReplyMapper mapper;
	
	Logger logger = LoggerFactory.getLogger(ReplyController.class);

	//조회
	@GetMapping("/reply/{bno}")
	public List<ReplyVO>  getList(@PathVariable  Long bno, Model model, ReplyVO vo) {
		vo.setBno(bno);
		return mapper.getList(bno);
	}
	
	//등록
	@PostMapping("/reply")
	public ReplyVO Insert(ReplyVO vo) {
		mapper.insert(vo);
		return vo;
	}
		
	//수정
	@PutMapping("/reply")
	public ReplyVO update(@RequestBody ReplyVO vo) {
		return vo;
	}
	
}