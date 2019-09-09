package com.oc.Domain;

public class User {
    private String username;//用户名
    private String password;//密码
    private String name;//姓名
    private String sex;//性别
    private  String collegeName;//学校名称
    private  String certNo;//资格证书
    private  String education;//学历
    private String qq;//qq
    private String sign;//个性签名
    private  String photoImg;//头像

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getCollegeName() {
        return collegeName;
    }

    public void setCollegeName(String collegeName) {
        this.collegeName = collegeName;
    }

    public String getCertNo() {
        return certNo;
    }

    public void setCertNo(String certNo) {
        this.certNo = certNo;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public String getPhotoImg() {
        return photoImg;
    }

    public void setPhotoImg(String photoImg) {
        this.photoImg = photoImg;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", collegeName='" + collegeName + '\'' +
                ", certNo='" + certNo + '\'' +
                ", education='" + education + '\'' +
                ", qq='" + qq + '\'' +
                ", sign='" + sign + '\'' +
                ", photoImg='" + photoImg + '\'' +
                '}';
    }
}
