package com.oc.Dao;

import com.oc.Domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public interface UserDao {
    @Select("select * from user where username=#{username} and password=#{password}")
     User findUser(User user);
    @Insert("insert into user values(null,#{username},#{password},#{name},#{sex},#{collegeName},#{certNo},#{education},#{qq},#{sign},#{photoImg})")
    void addUser(User user);
    @Update("update user set password=#{password},name=#{name}," +
            "collegeName=#{collegeName},certNo=#{certNo},education=#{education},qq=#{qq},sign=#{sign} where username=#{username}")
    void updateUser(User user);
    @Update("update user set photoImg=#{photoImg} where username=#{username}")
    void updatePhoto(@Param("photoImg")String photoImg1,@Param("username")String username1);
}
