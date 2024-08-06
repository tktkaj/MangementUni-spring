package com.university.management.online;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OnlineController {

    @RequestMapping("/online")
    public String online(){

        return "student/onlinevideo";
    }
}
