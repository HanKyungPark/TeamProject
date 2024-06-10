package data.mapper;

import data.dto.ResultDto;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;


@Mapper
public interface ResultMapperInter {

    @Select("SELECT COUNT(*) FROM result WHERE subject = #{subject}")
    int getResultCountBySubject(String subject);

    @Update("UPDATE result SET ${column} = ${column} + 1 WHERE subject = #{subject}")
    void updateResult(String subject, String column);

    @Insert("INSERT INTO result (subject, result1, result2) VALUES (#{subject}, 0, 0)")
    void insertResult(String subject);

    @Select("select * from result where subject=#{subject}")
    public List<ResultDto> getResults(String subject);

}