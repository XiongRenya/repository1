<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/9 0009
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>个人主页</title>

</head>
<body>
<script>

 function doYes() {
     var form=document.getElementById("form1");
      form.style.display="block";

}
 function doNo() {
     var form=document.getElementById("form1");
     form.style.display="none";

 }
 function getValue()
 {
     var x=document.getElementById("pictureImg").value;
     if(x=="")
     {
         alert("请选择文件");
         return false;
     }
     return true;


}

</script>

<!-- 引入头部页面 -->
<%@include file="/WEB-INF/pages/commons/header2.jsp"%>

    <div class="f-main clearfix">



        <div class="setting-right"  >
            <div>
                <span class="f-16">个人信息</span>
            </div>
            <div class="split-line" style="margin: 20px 0px;"></div>

             <img src="${photoImg}" border="1" alt="头像.." height="100px" width="80px" onclick="doYes()" title="点击图片更换头像"/>
            <form action="/user/updatePhoto" method="post" id="form1" enctype="multipart/form-data"  onsubmit="return getValue()"  style="display: none">
                <div >
                    <input type="file" id="pictureImg" name="img"/>

                    <div style="margin:15px 0px;" class="clearfix">
                        <input type="submit" style="float:left;" class="btn"  id="imgBtn" value="更换"/>
                       <span id="imgErrSpan" style="color:red;font-weight:normal;float:left;margin-left:10px;margin-top:5px;">${erroImg}</span>
                        <input type="button"  style="float:left;" class="btn" id="btn1" onclick="doNo()" value="关闭"/>
                    </div>
                </div>
            </form>
            <div class="split-line" style="margin: 20px 0px;"></div>
                <form class="oc-form" id="infoForm" method="post" action="/user/updateUser" >


                    <li><label>用户名</label>
                        <span>${user1.username}</span> <span style="color: red">用户名不可修改</span>
                        <input name="username"  value="${user1.username}" style="display: none" />
                    </li>
                    <li><label>密码</label>
                        <input name="password"  value="${user1.password}" type="text"  class="input-text2">
                    </li>
                    <li><label>姓名</label>
                        <input name="name"  value="${user1.name}" type="text"  class="input-text2">
                    </li>

                    <li><label>性别</label>
                        <c:if test="${user1.sex=='男'}">
                        <input  name="sex" type="radio" value="男" checked="checked"/>男
                            <input  name="sex" type="radio" value="女"/>女
                        </c:if>
                        <c:if test="${user1.sex=='女'}">
                            <input  name="sex" type="radio" value="男"/>男
                            <input  name="sex" type="radio" value="女" checked="checked"/> ${user1.sex}
                        </c:if>
                   </li>
                    <li><label>学校</label>
                        <input name="collegeName"  value="${user1.collegeName}" type="text"  class="input-text2">
                    </li>
                    <li><label>资格证书</label>
                        <input name="certNo"  value="${user1.certNo}" type="text"  class="input-text2">
                    </li>
                    <li><label>学历</label>
                        <select class="input-select" name="education">
                            <option value="本科" >本科</option>
                            <option value="硕士" >硕士</option>
                            <option value="博士" >博士</option>
                            <option value="博士后">博士后</option>
                            <option value="大专">大专</option>
                        </select>
                    </li>
                    <li><label>qq</label>
                        <input name="qq"  value="${user1.qq}"  type="text"  class="input-text2">
                    </li>
                    <li><label>个性签名</label>
                        <input name="sign"  value="${user1.sign}"  type="text"  class="input-text2">
                    </li>

                    <li class="clearfix" style="margin-top: 50px;padding-left: 170px;">
                        <input type="submit" class="btn" value="保存"/>
                    </li>

                    <li>
                        <div id="myAlert" class="alert alert-success" style="display: none;">
                            <span id="myAlert_msg" class="color-oc f-16">保存成功！</span>
                        </div>
                    </li>
                </form>
            </div>
        </div>
    </div>

        <!-- 引入头部页面 -->
<%@include file="/WEB-INF/pages/commons/foot.jsp"%>
</body>
</html>
