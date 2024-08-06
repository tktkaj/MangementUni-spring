package com.university.management.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/ideology")
    public String ideology() {

        return "home/ideology";
    }

    @RequestMapping("/calendar")
    public String calendar() {

        return "home/calendar";
    }

    @RequestMapping("/waytocome")
    public String waytocome() {

        return "home/waytocome";
    }
}
