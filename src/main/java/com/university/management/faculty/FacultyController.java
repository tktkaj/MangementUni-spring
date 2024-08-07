package com.university.management.faculty;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.university.management.board.dto.Board;
import com.university.management.board.dto.PageInfo;
import com.university.management.faculty.service.FacultyService;
import com.university.management.scholar.dto.Scholar;
import com.university.management.scholar.dto.ScholarList;
import com.university.management.scholar.service.ScholarService;

@Controller
public class FacultyController {

	@Autowired
	private HttpSession session;

	@Autowired
	private FacultyService service;

	@Autowired
	private ScholarService scholarservice;
	
	@RequestMapping("/infoboard")
	public String infoboard(HttpSession session, Model model) {
		System.out.println("FacultyController-infoboard() 실행");

		Map<String, String> params = new HashMap<>();

		String login = (String) session.getAttribute("login");
		System.out.println("login : " + login);

		/*
		 * 
		 * try { String searchValue = param.get("searchValue");
		 * 
		 * if (searchValue != null && searchValue.length() > 0) { String searchType =
		 * param.get("searchType"); params.put(searchType, searchValue);
		 * System.out.println("boardlist : " + params); }
		 * 
		 * } catch (Exception e) { e.printStackTrace(); }
		 */

		// 공지사항 목록 불러오기
		List<Board> boardList = service.getBoardList();

		// 총 게시글 수 가져오기
		int boardcount = service.getBoardCount(params);
		/*
		 * PageInfo info = new PageInfo(page, 10, boardcount, 10);
		 * 
		 * // 페이징 처리할 수 있는 데이터 넘기기 List<Board> listpage = service.getBoardList(info,
		 * boardlist);
		 */

		// model.addAttribute("params", params);
		model.addAttribute("boardList", boardList);
		model.addAttribute("count", boardcount);
		model.addAttribute("login", login);

		return "faculty/infoboard";
	}

	@RequestMapping("/infodetail")
	public String infodetail(Model model, @RequestParam("bo_no") int no) {
		System.out.println("FacultyController-infodetail() 실행");

		/* boolean res = service.selectLogin(loginNo); */

		Board board = service.findByNo(no);
		System.out.println(board);

		// 조회 수 증가
		int readCount = service.readCount(no);

		model.addAttribute("board", board);
		model.addAttribute("readCount", readCount);
		// model.addAttribute("replyList", board.getReplies());

		return "faculty/infodetail";
	}

	@RequestMapping("/writeinfo")
	public String writeinfo() {

		return "faculty/writeinfo";
	}

	@RequestMapping("/informationboard")
	public String informationboard(@RequestParam Map<String, Object> param, Model model) {
		System.out.println("FacultyController-informationboard() 실행");
		
		String title = (String) param.get("title");
	    String file = (String) param.get("filename");
	    String detail = (String) param.get("detail");

	    List<Board> formlist = service.boardInfoInsert(title, file, detail);	
	    System.out.println(formlist);
	    
	    model.addAttribute("boardList", formlist);
		return "faculty/infoboard";
	}

	@RequestMapping("/updateinfo")
	public String updateinfo() {

		return "faculty/updateinfo";
	}

	@RequestMapping("/objectionlist")
	public String objectionList() {
		return "objection/objectionlist";
	}

	// 성적이의신청 데이터 목록 받아오기
	/*
	 * @PostMapping("/objectionSearch")
	 * 
	 * @ResponseBody public List<> filterData(@RequestParam String
	 * department, @RequestParam String subject, @RequestParam String grade) {
	 * return service.objectionFilterData(department, subject, grade); }
	 */

	@RequestMapping("/scholarlist")
	public String scholarList(Model model,String scholarship_type,String department_type,String grade) {
		System.out.println("facultycontroller안에scholarlist실행");
		
		// Map 생성
				Map<String,String> params = new HashMap<>();
				params.put("scholarship_type", scholarship_type);
				params.put("DEPT_CODE", department_type);
				params.put("STU_GRADE", grade);
		
				System.out.println(params);
				
		List<ScholarList> scholarList= scholarservice.scholarlistSelect(params);
		
		System.out.println("장학금 리스트: " + scholarList);
		
	model.addAttribute("scholarList",scholarList);
	session.setAttribute("department",department_type);
	session.setAttribute("scholarship_type",scholarship_type);
	session.setAttribute("grade",grade);
		
		return "scholarship/scholarlist";
	}

	@PostMapping("/scholarlistInfo")
	@ResponseBody
	public Map<String, Object> scholarlistInfo(@RequestBody Map<String, String> requestBody) {
	    Map<String, Object> response = new HashMap<>();
	    try {
	        String schStatus = requestBody.get("SCH_STATUS");
	        int year = Integer.parseInt(requestBody.get("YEAR"));
	        int smt = Integer.parseInt(requestBody.get("SMT"));
	        int stuNo = Integer.parseInt(requestBody.get("STU_NO"));
	        int schNo = Integer.parseInt(requestBody.get("SCH_NO"));
	        String deptCode = requestBody.get("DEPT_CODE");

	        // 장학금 승인/취소 처리 로직 추가
	        boolean success = processScholarlistInfo(schStatus, year, smt, stuNo, schNo, deptCode);
	        response.put("success", success);

	    } catch (NumberFormatException e) {
	        response.put("success", false);
	        response.put("error", "잘못된 데이터 형식입니다.");
	    } catch (Exception e) {
	        response.put("success", false);
	        response.put("error", "처리 중 오류가 발생했습니다.");
	    }
	    return response;
	}

    private boolean processScholarlistInfo(String schStatus, int year, int smt, int stuNo, int schNo, String deptCode) {
        // 장학금 승인/취소 처리 로직 (예: 데이터베이스 업데이트)
    	System.out.println("확인"+schStatus+" "+year+" "+smt+" "+stuNo+" "+schNo+" "+deptCode);
        // 성공적으로 처리되었으면 true, 실패하면 false를 반환
        return true;
    }
	
	
}
