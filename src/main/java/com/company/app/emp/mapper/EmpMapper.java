package com.company.app.emp.mapper;

import java.util.List;

import com.company.app.emp.service.EmpReqVO;
import com.company.app.emp.service.EmpVO;

public interface EmpMapper {

	EmpVO getEmp(EmpVO vo);

	List<EmpVO> getEmpList(EmpReqVO vo1);

	void insert(EmpVO vo);

	void update(EmpVO vo);

	void empDelete(EmpVO vo);
	
}
