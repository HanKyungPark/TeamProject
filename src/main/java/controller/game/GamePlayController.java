package controller.game;

import data.dto.GameDto;

import data.service.GameService;
import data.service.ResultService;
import lombok.AllArgsConstructor;
import lombok.NonNull;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@AllArgsConstructor
@Controller
public class GamePlayController {
    @NonNull
    ResultService resultService;
    @NonNull
    GameService gameService;
    @GetMapping("/game/gameplay")
    public String MoveToplayGame(@RequestParam String subject, Model model, @ModelAttribute GameDto dto, HttpSession session) {
        model.addAttribute("subject", subject);
        int result1=0;
        int result2=0;
        session.setAttribute("subject",subject);
        List<GameDto> list=gameService.getgame(subject);
        model.addAttribute("list", list);
        model.addAttribute("result1", result1);
        model.addAttribute("result2", result2);
        return "game/gamedetail";
    }


}