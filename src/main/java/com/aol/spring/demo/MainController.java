package com.aol.spring.demo;

import com.aol.spring.demo.models.ChatsDao;
import com.aol.spring.demo.models.User;
import com.aol.spring.demo.models.UserDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ServerProperties;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * Created by ram on 26/02/16.
 */
@Controller
public class MainController {

    // Private fields

    @Autowired
    private UserDao _userDao;

    @Autowired
    private ChatsDao _chatsDao;

    private static final Logger logger = LoggerFactory
            .getLogger(MainController.class);

    @RequestMapping("/")
    public ModelAndView index(HttpServletRequest request,
                              HttpServletResponse response,
                              @CookieValue(value = "name", defaultValue = "") String name,
                              @CookieValue(value = "email", defaultValue = "") String email) {
        if ("".equals(name) || "".equals(email)) {
            return loginPage();
        } else {
            return chatsPage();
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        return new ModelAndView("login");
    }

    @RequestMapping(value = "/create-user", method = RequestMethod.POST)
    public String createUser(HttpServletRequest request,
                             HttpServletResponse response,
                             @RequestParam String name,
                             @RequestParam String email) {
        try {
            // create new user
            User user = new User();
            user.setName(name);
            user.setEmail(email);
            user.setTimestamp(new Date().getTime());
            _userDao.save(user);

            // save in cookie
            Cookie cookie = new Cookie("name", name);
            Cookie cookie1 = new Cookie("email", email);
            response.addCookie(cookie);
            response.addCookie(cookie1);
        } catch (Exception e) {
            logger.error("Exception in creating user: ", e.getStackTrace());
        }

        return "/";
    }

    @RequestMapping(value = "/chats", method = RequestMethod.GET)
    public ModelAndView chatsPage() {
        return new ModelAndView("chats");
    }

    @ResponseBody
    @RequestMapping(value = "/get-all-chats", method = RequestMethod.GET)
    public String getAllChats(@RequestParam long timestamp) {

        return null;
    }

    @ResponseBody
    @RequestMapping(value = "/post-chat", method = RequestMethod.POST)
    public String postChat() {
        return null;
    }

}
