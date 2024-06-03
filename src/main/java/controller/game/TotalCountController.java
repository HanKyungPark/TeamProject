package controller.game;

import data.dto.GameDto;
import data.service.GameService;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class TotalCountController {


        @NonNull
        private GameService gameService;

    @GetMapping("/")
    public String game(
            Model model
    ){
        int totalcount=gameService.TotalCount();
        List<GameDto> list= gameService.GetAllGames();

        model.addAttribute("totalcount",totalcount);
        model.addAttribute("list",list);

        return "game/gamelist";
    }



    }

