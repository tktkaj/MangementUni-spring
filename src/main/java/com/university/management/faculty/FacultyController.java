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

	@RequestMapping("/infoboard")
	public String infoboard(Model model) {

		Map<String, String> params = new HashMap<String, String>();
		

		String login = (String) session.getAttribute("login");
		System.out.println("login : " + login);

		// 공지사항 총 게시글 수
		int boardcount = service.getBoardCount(params);
		System.out.println("boardcount : " + boardcount);
		

		PageInfo info = new PageInfo();
		int page = info.getCurrentPage();
		PageInfo pageInfo = new PageInfo(page, 5, boardcount, 5);
		
		params.put("limit",String.valueOf(info.getListLimit())); 
		params.put("offset", String.valueOf(info.getOffset()));
		
		List<Board> boardinfolist = service.selectBoardListPage(params);

		model.addAttribute("boardList", boardinfolist);
		model.addAttribute("count", boardcount);
		model.addAttribute("login", login);
		model.addAttribute("pageInfo", pageInfo);

		return "faculty/infoboard";
	}

	// 공지사항 목록처리
	/*
	 * @GetMapping("/infoboard") public String infoboardPro(Model
	 * model, @RequestParam Map<String, String> param,
	 * 
	 * @RequestParam(value = "page", defaultValue = "1") int page) {
	 * System.out.println("FacultyController-infoboardPro() 실행");
	 * 
	 * String login = (String) session.getAttribute("login");
	 * System.out.println("login : " + login);
	 * 
	 * Map<String, String> params = new HashMap<String, String>();
	 * 
	 * String searchValue = param.get("searchValue"); String searchType =
	 * param.get("searchType"); String writer = param.get("writer"); String content
	 * = param.get("content");
	 * 
	 * if (searchType != null && searchValue != null &&
	 * !searchValue.trim().isEmpty()) { params.put(searchType, searchValue); } else
	 * { model.addAttribute("msg", "다시 선택해주세요"); }
	 * 
	 * // 공지사항 총 게시글 수 int boardcount = service.getBoardCount(params);
	 * System.out.println("boardcount : " + boardcount);
	 * 
	 * PageInfo info = new PageInfo(page, 5, boardcount, 5);
	 * 
	 * params.put(searchType, searchValue); params.put("limit",
	 * String.valueOf(info.getListLimit())); params.put("offset",
	 * String.valueOf(info.getOffset())); params.put("writer", writer);
	 * params.put("content", content);
	 * 
	 * System.out.println("params : " + params);
	 * 
	 * // 페이징 처리할 수 있는 데이터 넘기기 List<Board> boardinfolist =
	 * service.selectBoardListPage(params);
	 * 
	 * model.addAttribute("boardList", boardinfolist); model.addAttribute("count",
	 * boardcount); model.addAttribute("login", login);
	 * model.addAttribute("pageInfo", info); model.addAttribute("param", param);
	 * 
	 * return "faculty/infoboard"; }
	 */

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
