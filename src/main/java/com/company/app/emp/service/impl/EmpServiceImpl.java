package com.company.app.emp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.app.emp.mapper.EmpMapper;
import com.company.app.emp.service.EmpReqVO;
import com.company.app.emp.service.EmpService;
import com.company.app.emp.service.EmpVO;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired
	EmpMapper mapper;
	
	@Override
	public EmpVO getEmp(EmpVO vo) {
		return mapper.getEmp(vo);
	}

	@Override
	public List<EmpVO> getEmpList(EmpReqVO vo1) {
		return mapper.getEmpList(vo1);
	}

	@Override
	public void insert(EmpVO vo) {
		mapper.insert(vo);
	}

	@Override
	public void update(EmpVO vo) {
		mapper.update(vo);
	}

	@Override
	public void empDelete(EmpVO vo) {
		mapper.empDelete(vo);
	}

}