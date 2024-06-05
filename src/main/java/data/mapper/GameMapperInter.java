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

    @Insert("insert into upload (photo1,photo2) values (#{photo1},#{photo2})")
    public void insertPhoto(GameDto dto);
    @Select("select count(*) from upload")
    public int TotalCount();

    @Select("select * from upload")
    public List<GameDto> getAllgames();

    @Select("select * from upload where subject=#{subject}")
    public List<GameDto> getgame(String subject);

    @Update("update result set result1=result1+1 where subject=#{subject}")
    public void updateresult1(String subject);

    @Update("update result set result2=result2+1 where subject=#{subject}")
    public void updateresult2(String subject);

    @Select("select * from upload where subject=#{subjcet}")
    public List<GameDto> getupload(String subjcet);


}
