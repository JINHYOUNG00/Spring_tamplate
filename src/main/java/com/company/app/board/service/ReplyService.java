package com.company.app.board.service;

import java.util.List;

public interface ReplyService {
	
    public int insert(ReplyVO vo);
    public ReplyVO read(Long bno);
    public int delete(Long bno);
    public int update(ReplyVO vo);
    public List<ReplyVO> getList(Long bno);
}