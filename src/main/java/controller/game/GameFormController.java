package controller.game;

import data.dto.GameDto;
import data.service.GameService;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import naver.cloud.NcpObjectStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
@RequiredArgsConstructor
@Controller
public class GameFormController {

    @NonNull
    private NcpObjectStorageService storageService;

    //이름
    String bucketName = "hankyung133";
    String folderName = "photo";

    @Autowired
    private GameService gameService;

    @GetMapping("game/gameinsert")
    public String gamemove() {
        return "game/gameform";
    }

    @PostMapping("/gameforminsert")
    public String gameInsert(@RequestParam String subject,
                             @RequestParam String name1,
                             @RequestParam String name2,
                             Model model,
                             HttpSession session,
                             @RequestParam("photo1") MultipartFile photo1,
                             @RequestParam("photo2") MultipartFile photo2

    ) {
        GameDto gameDto = new GameDto();
        String loginid= (String)session.getAttribute("loginid");
        gameDto.setId(loginid);
        gameDto.setSubject(subject);
        gameDto.setName1(name1);
        gameDto.setName2(name2);

//

        String photoname1=storageService.uploadFile(bucketName,folderName,photo1);
        String photoname2=storageService.uploadFile(bucketName,folderName,photo2);
        gameDto.setPhoto1(photoname1);
        gameDto.setPhoto2(photoname2);
        gameService.insertGame(gameDto);
//        gameService.insertphoto(gameDto);
        model.addAttribute(loginid);
        return "redirect:./";


    }

    ;
}