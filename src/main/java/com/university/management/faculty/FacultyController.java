package com.university.management.faculty;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.university.management.board.dto.Board;
import com.university.management.board.dto.PageInfo;
import com.university.management.employee.dto.Employee;
import com.university.management.faculty.service.FacultyService;

@Controller
public class FacultyController {

	@Autowired
	private HttpSession session;

	@Autowired
	private FacultyService service;

	// 공지사항 목록처리
	@GetMapping("/infoboard")
	public String infoboard(Model model, @RequestParam Map<String, String> param,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		System.out.println("FacultyController-infoboard() 실행");

		String login = (String) session.getAttribute("login");
		System.out.println("login : " + login);

		Map<String,String> params = new HashMap<String,String>();
		String searchType = param.get("searchType");
		String searchValue = param.get("searchValue");
		System.out.println("searchType : " + searchType);
		System.out.println("searchValue : " + searchValue);
		
		try {
			if (searchType != null && searchValue != null && !searchValue.trim().isEmpty()) {
				params.put(searchType, searchValue);
				System.out.println("if문 실행");
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		
		int listLimit = 5; // 한 페이지에 보여질 게시글 수
		int totalRowCount = service.getBoardListCount(params); // 전체 게시글의 수
		System.out.println("totalRowCount : " + totalRowCount);

		// 페이지네이션 설정	
		PageInfo pageSettings = new PageInfo(page, listLimit, totalRowCount, 5);
		//PageInfo pageSettings = new PageInfo(5, totalRowCount, page);
		//pageSettings.setCurrentPage(page);
		int firstRow = pageSettings.getFirstRow();
		int lastRow = pageSettings.getLastRow();
		
		pageSettings.pageSetting(totalRowCount);
		
		params.put("firstRow", String.valueOf(firstRow));
		params.put("lastRow", String.valueOf(lastRow));

		// 데이터 가져오기
		List<Board> boardList = service.selectBoardList(params);
		System.out.println("boardlist : " + boardList);
		
		// 데이터와 페이지 정보 모델에 추가하기
		model.addAttribute("login", login);
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageInfo", pageSettings);
		model.addAttribute("count", totalRowCount);
		model.addAttribute("param", param);

		return "faculty/infoboard";
	}

	// 공지사항 상세 페이지
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

	// 공지사항 작성
	@RequestMapping("/writeinfo")
	public String writeinfo() {
		return "faculty/writeinfo";
	}

	// 공지사항 작성 처리
	@RequestMapping("/writeinfoPro")
	public String writeinfoPro(Model model, @RequestParam Map<String, Object> param, @ModelAttribute Board board) {
		System.out.println("FacultyController-writeinfoPro() 실행");

		String loginname = (String) session.getAttribute("loginname");
		System.out.println(loginname);

		int loginNo = service.empSelect(loginname);
		System.out.println("loginNO : " + loginNo);

		String title = (String) param.get("title");
		String file = (String) param.get("filename");
		String detail = (String) param.get("detail");

		System.out.println("title : " + title);
		System.out.println("file : " + file);
		System.out.println("detail : " + detail);

		if (title != null && detail != null) {

			file = (file != null || file != "") ? "-" : file; // filename이 null일 때 처리
			System.out.println("file : " + file);

			// param의 값을 Board 객체에 설정
			board.setEmp_no(loginNo);
			board.setTitle(title);
			board.setContent(detail);
			board.setOriginalFilename(file);

			int res = service.insertWrite(board);

			if (res > 0) {
				System.out.println("글이 추가 되었습니다");
				model.addAttribute("msg", "글이 추가 되었습니다");
			} else {
				System.out.println("글 추가를 실패하였습니다");
				model.addAttribute("msg", "글 추가를 실패하였습니다");
			}

		} else {
			// 빈칸일 경우 alert창 띄움
			model.addAttribute("msg", "내용을 입력해주세요.");
		}

		return "redirect:/infoboard";
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
	public String scholarList() {
		return "scholarship/scholarlist";
	}

}
