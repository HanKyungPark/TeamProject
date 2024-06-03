package data.service;

import data.dto.GameDto;
import data.mapper.GameMapperInter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GameService {

    private final GameMapperInter gameMapperInter;

    public void insertGame(GameDto dto) {
        gameMapperInter.insertgame(dto);
    }

//    public void insertphoto(GameDto dto) {
//        gameMapperInter.insertPhoto(dto);
//
//    }

    public int TotalCount() {
        return gameMapperInter.TotalCount();
    }

    public List<GameDto> GetAllGames() {
        return gameMapperInter.getAllgames();
    }


}
