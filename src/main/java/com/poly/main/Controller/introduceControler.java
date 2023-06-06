package com.poly.main.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class introduceControler {
	
    @RequestMapping("introduce")
    public String introduce() {
		return "user/introduce";		
	}
}
