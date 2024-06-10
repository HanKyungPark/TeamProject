package data.mapper;


import data.dto.UserDto;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapperInter {
    @Insert("insert into user (id,passwd,birthday,hp,gender,name,addr) values( #{id},#{passwd},#{birthday},#{hp},#{gender},#{name},#{addr})")
    public void insertUser(UserDto dto);

    @Select("select count(*) from user where id=#{id} and passwd=#{passwd}")
    public int checkLogin(String id, String passwd);

    @Select("select name from user where id=#{id}")
    public String selectName(String id);


}
