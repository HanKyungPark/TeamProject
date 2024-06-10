package controller.user;

import data.dto.GameDto;
import data.dto.UserDto;
import data.service.UserService;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import naver.cloud.NcpObjectStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@RequiredArgsConstructor
@Controller
public class UserFormController {
    @NonNull
    private NcpObjectStorageService storageService;
    @Autowired
    private UserService userService;


    @GetMapping("user/userinsert")
    public String isertform() {
        return "user/user";
    }

    @PostMapping("/user/insert")
    public String userInsert(@ModelAttribute UserDto userDto) {
        userService.insertUser(userDto);
        return "redirect:../";
    };

}

