package com.company.app.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.app.board.mapper.BoardMapper;
import com.company.app.board.service.BoardService;
import com.company.app.board.service.BoardVO;
import com.company.app.common.Criteria;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardMapper mapper;
	
	@Override
	public List<BoardVO> boardSelectList(Criteria cri) {
		return mapper.boardSelectList(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		return mapper.getTotal(cri);
	}

	@Override
	public BoardVO boardSelect(BoardVO vo) {
		return mapper.boardSelect(vo);
	}

	@Override
	public void boardInsert(BoardVO vo) {
		mapper.boardInsert(vo);
	}

	@Override
	public void boardUpdate(BoardVO vo) {
		mapper.boardUpdate(vo);
	}

	@Override
	public void boardDelete(BoardVO vo) {
		mapper.boardDelete(vo);
	}


}