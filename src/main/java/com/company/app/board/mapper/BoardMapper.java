package com.company.app.board.mapper;

import java.util.List;

import com.company.app.board.service.BoardVO;
import com.company.app.common.Criteria;

public interface BoardMapper {

	public List<BoardVO> boardSelectList(Criteria cri);
	public int getTotal(Criteria cri);
	public BoardVO boardSelect(BoardVO vo);
	public void boardInsert(BoardVO vo);
	public void boardUpdate(BoardVO vo);
	public void boardDelete(BoardVO vo);
}
