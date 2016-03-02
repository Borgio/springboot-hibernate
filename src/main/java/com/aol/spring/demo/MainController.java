package com.aol.spring.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by ram on 26/02/16.
 */
@Controller
public class MainController {
    @RequestMapping("/")
    public ModelAndView index() {
        return null;
    }

    @ResponseBody
    @RequestMapping("/get-all-chats")
    public String getAllChats() {
        return null;
    }

    @ResponseBody
    @RequestMapping("/post-chat")
    public String postChat() {
        return null;
    }


}
