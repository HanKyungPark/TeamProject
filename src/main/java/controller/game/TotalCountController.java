package controller.game;

import data.dto.GameDto;
import data.service.GameService;
import data.service.ResultService;
import data.service.UserService;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class TotalCountController {


    private final ResultService resultService;
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
        Map<String,Integer> map1=new HashMap<>();
        List<String> ids=gameService.getallid();
        List<String> subjects=new ArrayList<>();
//        results;
        Map<String,Integer> map2=new HashMap<>();

        for (int i=0;i<list.size();i++){
           String idss= ids.get(i);
           String names=userService.selectName(idss);
           map.put(idss,names);

        }
        List<Integer> TotalResult = resultService.getResultTotal();
        model.addAttribute("TotalResult",TotalResult);
        model.addAttribute("totalcount",totalcount);
        model.addAttribute("list",list);
        model.addAttribute("map",map);
        return "game/gamelist";
    }



    }

