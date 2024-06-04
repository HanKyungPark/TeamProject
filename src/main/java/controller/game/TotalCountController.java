package controller.game;

import data.dto.GameDto;
import data.service.GameService;
import data.service.UserService;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class TotalCountController {


        @NonNull
        private UserService userService;
        @NonNull
        private GameService gameService;

    @GetMapping("/")
    public String game(
            Model model
    ){
        int totalcount=gameService.TotalCount();
        Map<String,String> map=new HashMap<>();
        List<GameDto> list= gameService.GetAllGames();
        for(int i=0;i<list.size();i++){
            String id=list.get(i).getId();
            String name=userService.selectName(id);

            map.put(id,name);

        }

        model.addAttribute("totalcount",totalcount);
        model.addAttribute("list",list);
        model.addAttribute("map",map);
        return "game/gamelist";
    }



    }

