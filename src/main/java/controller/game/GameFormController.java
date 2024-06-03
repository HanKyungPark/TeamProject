package controller.game;

import data.dto.GameDto;
import data.service.GameService;
import lombok.NonNull;
import naver.cloud.NcpObjectStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;

@Controller
public class GameFormController {

    @NonNull
    private NcpObjectStorageService storageService;
    //이름
    String bucketName="hankyung133";
    String folderName="photo";

    @Autowired
    private GameService gameService;
    @GetMapping("/gameinsert")
    public String gameInsert(@ModelAttribute GameDto gameDto,
                             Model model,
                            HttpSession session,
                            @RequestParam("photo1") MultipartFile photo1,
                             @RequestParam("photo2") MultipartFile photo2
//                             ,@RequestParam String photo1,
//                             @RequestParam String photo2
                            ) {




        gameService.insertGame(gameDto);
        gameDto.setId(gameDto.getId());
        return "redirect:./game/gamelist";
    }


}
