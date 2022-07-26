package com.company.app.emp.service;

import java.util.List;

public interface EmpService {
	
	EmpVO getEmp(EmpVO vo);

	List<EmpVO> getEmpList(EmpReqVO vo1);

	void insert(EmpVO vo);

	void update(EmpVO vo);

	void empDelete(EmpVO vo);
}
