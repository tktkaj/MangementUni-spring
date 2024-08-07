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
 return "everytime/evereytimeupdate";
	}
	
	@RequestMapping("/etdetailview")
	public String etdetailview() {
 return "everytime/etdetailview";
	}
	
	@RequestMapping("/everytimehot")
	public String ethot() {
 return "everytime/everytimehot";
	}
	@RequestMapping("/etmypage")
	public String etmypage() {
 return "everytime/etmypage";
	}
	
	@RequestMapping("/etnew")
	public String etnew() {
 return "everytime/etnew";
	}

}