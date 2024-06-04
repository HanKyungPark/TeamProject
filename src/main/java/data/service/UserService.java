package data.service;

import data.dto.UserDto;
import data.mapper.UserMapperInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    @Autowired
    private UserMapperInter uInter;

    public void insertUser(UserDto dto) {

        uInter.insertUser(dto);

    }

    public boolean isLoginCheck(String id, String passwd) {
        return uInter.checkLogin(id, passwd) == 1 ? true : false;
    }

    ;
    public String selectName(String id){
        return uInter.selectName(id);
    };
}
