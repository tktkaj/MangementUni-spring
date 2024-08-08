package com.university.management.login;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.HashMap;
import java.util.Map;

import com.mysql.cj.Session;
import com.university.management.employee.dto.Employee;
import com.university.management.login.service.LoginService;
import com.university.management.student.dto.Student;

@Controller
public class LoginController {

	@Autowired
	private HttpSession session;
	
	@Autowired
	private LoginService loginService;

	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}

	@RequestMapping("/loginpro")
	public String loginpro(Model model, String loginid, String loginPassword, String login, HttpSession session) {
		if (loginid == null || loginid.isEmpty() || loginPassword == null || loginPassword.isEmpty()) {
			model.addAttribute("msg", "아이디와 비밀번호를 입력해 주세요.");
			return "login/login";
		}

		// Map 생성
		Map<String, String> params = new HashMap<>();
		params.put("loginid", loginid);
		params.put("loginPassword", loginPassword);

		if (login.equals("Employee")) {
			Employee employee = loginService.emplogin(params);
			if (employee != null && employee.getEMP_PASSWORD().equals(loginPassword)) {
				session.setAttribute("loginname", employee.getEMP_NAME());
				model.addAttribute("msg", loginid + "관리자님 로그인 되었습니다.");
				
				session.setAttribute("login",login);
				return "home";
			} else {
				model.addAttribute("msg", "아이디와 비밀번호를 제대로 입력하세요.");
				return "login/login";
			}
		} else if (login.equals("Student")) {
			Student student = loginService.studentLogin(params);
			if (student != null && student.getSTU_PASSWORD().equals(loginPassword)) {
				session.setAttribute("loginname", student.getSTU_NAME());
				session.setAttribute("studentno", student.getSTU_NO());
				session.setAttribute("stugrade", student.getSTU_GRADE());
				session.setAttribute("studeptname", student.getDEPT_NAME());
				session.setAttribute("email", student.getSTU_EMAIL());
				session.setAttribute("phone", student.getSTU_PHONE());
				session.setAttribute("loginPassword", student.getSTU_PASSWORD());
				model.addAttribute("msg", student.getSTU_NAME() + "학생 로그인 되었습니다.");
				session.setAttribute("login",login);
				return "home";
			} else {
				model.addAttribute("msg", "아이디와 비밀번호를 제대로 입력하세요.");
				return "login/login";
			}
		}

		return "home";
	}
	
	
	 @RequestMapping("/logout")
	    public String logout(HttpSession session, Model model) {
	        // 세션 무효화
	        session.invalidate();
	        
	        // 로그아웃 메시지
	        model.addAttribute("msg", "로그아웃 되었습니다.");
	        
	        // 로그인 페이지로 리디렉션
	        return "home";
	    }

	@RequestMapping("/findpassword")
	public String findPasswords() {
		return "login/findpassword";
	}

	@RequestMapping("/passwordchange")
	public String passwordChange(Model model ) {
		
	int id=(int)session.getAttribute("studentno");
	String name=(String)session.getAttribute("loginname");
	String deptname=(String)session.getAttribute("studeptname");
	String email=(String)session.getAttribute("email");
	String phone=(String)session.getAttribute("phone");
	String password=(String)session.getAttribute("loginPassword");
		System.out.println(email);
		System.out.println(phone);
		model.addAttribute("id",id);
		model.addAttribute("name",name);
		model.addAttribute("deptname",deptname);
		model.addAttribute("email",email);
		model.addAttribute("phone",phone);
		model.addAttribute("password",password);
		
		return "login/passwordchange";
	}
	
	@RequestMapping("/passwordchangeInfo")
	public String passwordchangeInfo(Model model, int STU_NO, String STU_PASSWORD) {
		  Map<String, Object> params = new HashMap<>();  
	        params.put("STU_PASSWORD", STU_PASSWORD);
	        params.put("STU_NO", STU_NO);
		System.out.println(params);
	loginService.pwschange(params);
		

		return "home";
	}
	
	
}