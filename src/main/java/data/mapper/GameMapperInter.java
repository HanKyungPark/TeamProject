package data.mapper;

import data.dto.GameDto;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
import java.util.Map;

@Mapper
public interface GameMapperInter {

    @Insert("insert into upload (id,photo1,name1,photo2,name2,subject) values( #{id},#{photo1},#{name1},#{photo2},#{name2},#{subject})")
    public void insertgame(GameDto dto);

    @Select("select count(*) from upload")
    public int TotalCount();

    @Select("select * from upload order by subject")
    public List<GameDto> getAllgames();

    @Select("select * from upload where subject=#{subject}")
    public List<GameDto> getgame(String subject);


    @Select("select * from upload where subject=#{subjcet}")
    public List<GameDto> getupload(String subjcet);

    @Select("select id from upload ")
    public List<String> getAllids();

    @Select("select subject from upload where id=#{id}")
    public List<String> getallsubjects (String id);
}
