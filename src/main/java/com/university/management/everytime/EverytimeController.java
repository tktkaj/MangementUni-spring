package com.university.management.everytime;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EverytimeController {
	
	@RequestMapping("/etmainpage")
	public String etmainpage() {
 return "everytime/etmainpage";
	}

	@RequestMapping("/etaupdate")
	public String etamend() {
 return "everytime/etaupdate";
	}
	
	@RequestMapping("/etdetailview")
	public String etdetailview() {
 return "everytime/etdetailview";
	}
	@RequestMapping("/etdetailview2")
	public String etdetailview2() {
 return "everytime/etdetailview2";
	}
	@RequestMapping("/ethot")
	public String ethot() {
 return "everytime/ethot";
	}
	@RequestMapping("/etmypage")
	public String etmypage() {
 return "everytime/etmypage";
	}
	@RequestMapping("/etmywrite")
	public String etmywrite() {
 return "everytime/etmywrite";
	}
	@RequestMapping("/etnew")
	public String etnew() {
 return "everytime/etnew";
	}

}