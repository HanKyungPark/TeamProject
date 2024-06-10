package data.service;

import data.dto.GameDto;
import data.mapper.GameMapperInter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class GameService {

    private final GameMapperInter gameMapperInter;

    public void insertGame(GameDto dto) {
        gameMapperInter.insertgame(dto);
    }



    public int TotalCount() {
        return gameMapperInter.TotalCount();
    }

    public List<GameDto> GetAllGames() {
        return gameMapperInter.getAllgames();
    }

    public List<GameDto> getgame(String subject){
        return gameMapperInter.getgame(subject);
    };
    public List<GameDto> getupload(String subjcet) {
        return gameMapperInter.getupload(subjcet);
    }
    public List<String> getallid(){
        return gameMapperInter.getAllids();
    }
    public List<String>  getallsubjects(String id){
        return gameMapperInter.getallsubjects(id);
    }
}
