package com.university.management.everytime;


import com.university.management.board.dto.Board;
import com.university.management.board.dto.BoardDTO;
import com.university.management.board.dto.PageInfo;
import com.university.management.board.service.BoardService;
import com.university.management.everytime.service.EverytimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

@Controller
public class EverytimeController {

	@Autowired
	private EverytimeService service;

	@Autowired
	private HttpSession session;

	@RequestMapping("/etmainpage")
	public String etmainpage(Model model) {

		List<Board> list = service.getAllEtaList();

		model.addAttribute("list", list);

		return "everytime/etmainpage";
	}

	@RequestMapping("/etaupdate")
	public String etamend() {
		return "everytime/evereytimeupdate";
	}

	@RequestMapping("/etdetailview")
	public String etdetailview(Model model, @RequestParam("no") int boNo) {

		Board etaboard = service.getEtaBoardByNo(boNo);

		model.addAttribute("board", etaboard);

		return "everytime/etdetailview";
	}

	@RequestMapping("/everytimehot")
	public String ethot(Model model) {

		List<Board> list = service.getAllEtaHotList();
		model.addAttribute("list", list);
		System.out.println(list);

		return "everytime/everytimehot";
	}

	@RequestMapping("/etmypage")
	public String etmypage(Model model, @RequestParam("stuno") int stu_no) {

		List<Board> list = service.getAllEtaListByStuNo(stu_no);

		model.addAttribute("list", list);

		return "everytime/etmypage";

	}

	@RequestMapping("/etnew")
	public String etnew() {
		return "everytime/etnew";
	}

	/*-------------------------기능---------------*/

	

	// 게시글 수정 폼 이동

	@GetMapping("/edit/{BO_NO}")
	public String editForm(@PathVariable("BO_NO") int boNo, Model model) {
	    // 게시글 정보 가져오기
	    Board boardDTO = service.getEtaBoardByNo(boNo);
	    
	    // 모델에 게시글 정보 추가
	    model.addAttribute("boardDTO", boardDTO);
	    
	    // 수정 페이지로 이동
	    return "evereytimeupdate";
	}

    
//	// 게시글 수정
//	@PostMapping("/editBoard")
//	public String editBoard(@ModelAttribute BoardDTO boardDTO, RedirectAttributes redirectAttributes) {
//	    try {
//	        service.updateBoard(boardDTO);
//	        redirectAttributes.addFlashAttribute("message", "게시글이 성공적으로 수정되었습니다.");
//	        return "redirect:/etmypage?stuno=" + boardDTO.getStuNo();
//	    } catch (Exception e) {
//	        redirectAttributes.addFlashAttribute("message", "게시글 수정에 실패했습니다.");
//	        return "everytimeupdate";
//	    }
//	}

	

	// 게시글 신고
	@PostMapping("/report/{boNo}")
	public String reportBoard(@PathVariable("boNo") int BO_NO, HttpSession session) {
		String user = (String) session.getAttribute("user");
		service.reportBoard(BO_NO, user);
		// 팝업으로 신고 접수 메시지 표시
		return "redirect:/everytime/view/" + BO_NO;
	}

	// 게시글 좋아요
	@PostMapping("/like/{boNo}")
	public String likeBoard(@PathVariable("boNo") int BO_NO, HttpSession session) {
		String user = (String) session.getAttribute("user");
		service.likeBoard(BO_NO, user);
		return "redirect:/everytime/view/" + BO_NO;
	}

}