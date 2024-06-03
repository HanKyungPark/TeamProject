package controller.game;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GamePlayController {

    @GetMapping("/game/gameplay")
    public String MoveToplayGame(@RequestParam String subject, Model model) {
        model.addAttribute("subject", subject);
        return "game/gamedetail";
    }
}
