package com.company.app.board.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
public class ReplyVO {
	
	private Long rno;
	private Long bno;
	private String reply;
	private String replyer;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date replyDate;
	@JsonIgnore
	private Date updateDate;
}
