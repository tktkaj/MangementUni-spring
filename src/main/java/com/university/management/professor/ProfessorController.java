package com.university.management.professor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.university.management.professor.dto.Professor;
import com.university.management.professor.service.ProfessorService;

@Controller
public class ProfessorController {


    @Autowired
    private ProfessorService proService;


    @RequestMapping("/professor")
    public String professor(Model model, String department) {
        System.out.println("실행");
        System.out.println("옵션값" + "COMP");
        List<Professor> prolist = proService.proselect(department);

        System.out.println(prolist);
        model.addAttribute("list", prolist);
        model.addAttribute("department", department);
        return "home/professorinfo";
    }


}
