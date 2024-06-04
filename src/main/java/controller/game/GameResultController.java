package controller.game;

import data.dto.GameDto;

import data.dto.ResultDto;
import data.mapper.GameMapperInter;
import data.service.GameService;
import data.service.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.SessionScope;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class GameResultController {

    @Autowired
    GameService gameService;
    @Autowired
    ResultService resultService;
    @Autowired
    GameMapperInter gameMapperInter;


    public void insertResult(HttpSession session, Model model){
        String subject=(String) session.getAttribute("subject");

        List<GameDto> list=gameService.getgame(subject);
    };

    @PostMapping("/updateResult")
    @ResponseBody
    public String updateResult(@RequestParam String subject, @RequestParam String column) {
        try {
            resultService.updateResult(subject, column);
            return "Success";
        } catch (Exception e) {
            e.printStackTrace();
            return "Error";
        }
    }
    @GetMapping("/game/result")
    public String getResults(HttpSession session, Model model) {
        String subject=(String) session.getAttribute("subject");
        List<GameDto> game=gameMapperInter.getupload(subject);
        List<ResultDto> list= resultService.getResults(subject);
        model.addAttribute("game", game);
           model.addAttribute("list", list);

        return "game/gameresult";
    }
};
