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
	public String studentstatus(Model  model) {
		
		System.out.println("studentstatus실행");
		
		
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
     
      // 주민등록번호에서 앞자리 부분 추출
      String str = studentInfo.get(0).getSTU_JUMIN();
      String birthPrefix=str.substring(0, 6);
      
      System.out.println(birthPrefix);
      // 생년월일 형식: YYMMDD
      // 연도 처리 없이 그대로 사용
      String year = birthPrefix.substring(0, 2);
      String month = birthPrefix.substring(2, 4);
      String day = birthPrefix.substring(4, 6);

      // 연도 앞에 '20'을 붙여 2000년대 생년월일로 가정
      // 연도가 00~21로 시작하면 2000년대, 그 외는 1900년대
      int yearInt = Integer.parseInt(year);
      if (yearInt <= 21) {
          year = "20" + year;
      } else {
          year = "19" + year;
      }
      studentInfo.get(0).setSTU_JUMIN(year + "-" + month + "-" + day);
         
          System.out.println(studentInfo);
          model.addAttribute("studentInfo", studentInfo);
         
      } else {
        	System.out.println("노실행");
          model.addAttribute("msg", "로그인 정보가 없습니다.");
      	return "login/login";
      }
		
		
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
