package controller.login;

import data.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserLoginController {
    @Autowired
    private UserService userService;
    @ResponseBody
    @GetMapping("/member/login")
    public Map<String,String> login(@RequestParam(defaultValue = "no") String saveid,
                                    @RequestParam String id,
                                    @RequestParam String passwd,
                                    HttpSession session
    ){
        Map<String,String> map = new HashMap<>();
        boolean loginStatus= userService.isLoginCheck(id,passwd);
        if(loginStatus){
            map.put("status","success");

            session.setAttribute("saveid",saveid.equals("no")?"no":"yes");
            session.setAttribute("loginok","yes");
            session.setAttribute("loginid",id);
        }else {
            map.put("status","fail");
        }

        return map;
    };
    @ResponseBody
    @GetMapping("/member/logout")
    public void memeberLogout(HttpSession session){
        session.removeAttribute("loginok");
    }
}