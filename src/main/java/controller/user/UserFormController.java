package controller.user;

import data.dto.UserDto;
import data.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserFormController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String insert() {

        return "game/gamelist";
    }

    @GetMapping("user/userinsert")
    public String isertform() {
        return "user/user";
    }
    @GetMapping("/user/insert")
    public String userInsert(@ModelAttribute UserDto userDto) {


        userService.insertUser(userDto);

        return "game/gamelist";
    };

}