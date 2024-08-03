package com.university.management.student;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.university.management.student.dto.Student;
import com.university.management.student.service.StudentService;

@Controller
public class StudentController {
	 @Autowired
	  private HttpSession session;
	
	 @Autowired
	 private StudentService stuservice;
	 
	@RequestMapping("/askpresident")
	public String askpresident() {
		return "student/askpresident";
	}

	@RequestMapping("/studentinfo")
	public String studentinfo(Model  model) {
		System.out.println("studentinfo실행");
		
		
		  // 세션에서 loginname을 가져옴
		Integer loginNo = (Integer) session.getAttribute("studentno");
        System.out.println(loginNo);
        // 세션에 loginname이 저장되어 있는지 확인
        if (loginNo != null) {
        	System.out.println("실행");
            // 모델에 loginName을 추가
        List<Student> studentInfo = stuservice.stuInfoSelect(loginNo);
        
        if(studentInfo.get(0).getSCH_DISCOUNT()==null) {
       studentInfo.get(0).setSCH_DISCOUNT("해당없음");
        }
        	
            System.out.println(studentInfo);
            model.addAttribute("studentInfo", studentInfo);
           
        } else {
          	System.out.println("노실행");
            model.addAttribute("msg", "로그인 정보가 없습니다.");
        	return "login/login";
        }

		return "student/studentinfo";
	}
	
	@RequestMapping("/studentstatus")
	public String studentstatus() {
		return "student/studentstatus";
	}
	
	@RequestMapping("/idcard")
	public String idcard() {
		return "student/idcard";
	}

	@RequestMapping("/popup")
	public String popup() {
		return "student/popup";
	}

	@RequestMapping("/myCoursesList")
	public String MyCoursesList() {
		return "courses/myCoursesList";
	}

	@RequestMapping("/myCoursesPage")
	public String MyCoursesPage() {
		return "courses/myCoursesPage";
	}

	@RequestMapping("/objection")
	public String objection() {
		return "objection/objection";
	}

	@RequestMapping("/objectionWrite")
	public String objectionWrite() {
		return "objection/objectionWrite";
	}

}
