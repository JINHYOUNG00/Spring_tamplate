package com.company.app.emp.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.app.emp.service.EmpReqVO;
import com.company.app.emp.service.EmpService;
import com.company.app.emp.service.EmpVO;

@Controller
public class EmpController {

	private static final Logger logger = LoggerFactory.getLogger(EmpController.class);

	@Autowired
	EmpService service;

	// 단건조회
	@RequestMapping("/emp")
	public String emp(EmpVO vo, Model model) {
		logger.info("파라미터:" + vo.toString());
		model.addAttribute("emp", service.getEmp(vo));
		return "emp/emp";
	}

	// 목록
	@RequestMapping("/empList")
	public String empList(Model model, EmpVO vo, EmpReqVO vo1) {
		model.addAttribute("empList", service.getEmpList(vo1));
		return "emp/empList";
	}

	// 등록
	@RequestMapping("/empInsert")
	public String empInsert() {

		return "emp/empInsert";
	}

	// 등록처리
	@RequestMapping("/empInsertProc")
	public String empInsertProc(EmpVO vo) {
		logger.debug(vo.toString());
		System.out.println(vo);
		service.insert(vo);
		return "emp/empInsert";
	}

	// 수정
	@RequestMapping("/empUpdate/{id}")
	public String empUpdateForm(Model model, EmpVO vo, @PathVariable String id) {
		vo.setEmployeeId(id);
		model.addAttribute("emp", service.getEmp(vo));
		return "emp/empUpdate";
	}
	
	@RequestMapping("/update")
	public String empUpdateProc(EmpVO vo) {
		service.update(vo);
		return "redirect:empList";
	}
	
	@RequestMapping("/empDelete")
	public String empDelte(EmpVO vo) {
		service.empDelete(vo);
		return "redirect:empList";
	}
	
}