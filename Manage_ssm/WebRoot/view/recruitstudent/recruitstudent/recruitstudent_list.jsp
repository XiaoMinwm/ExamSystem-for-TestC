<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>首页</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="js/bootstrap.min.js"></script>
</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">招生管理</a></li>
        <li>招生线索</li>
    </ul>
</div>
<form class="form-inline" action="student.do?Name_Date" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">学员姓名：</label>
        <input type="text" name="sname" class="form-control" id="activename" placeholder="请输入学员姓名">
      </div>
    <div class="form-group">
         <label class="" for="activename">学员意向：</label>
		  <select name="dictionory.id" class="form-control input-sm">
		      <option value="">----请选择----</option>
         	<c:forEach items="${dictionoryList}" var="d">
    			<option value="${d.id}">${d.context}</option>
    		</c:forEach>
         	</select>	
      </div>
    <input type="submit"   class="btn btn-danger"     value="查询"/>
    <a  class="btn btn-success"  href="student.do?getDicory">添加学员</a>
    
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>手机号码</th>
            <th>电子邮件</th>
            <th>所在院校</th>
            <th>操作</th>
        </tr>
      
           <c:forEach items="${find_XS}" var="f">
         	<tr>
        	<td>${f.id}</td>
            <td>${f.name}</td>
            <td>${f.sex}</td>
            <td>${f.age}</td>
            <td>${f.phone}</td>
            <td>${f.email}</td>
            <td>${f.school}</td>
            <th>
            <a href="student.do?getByIdStu&id=${f.id}">修改</a>  
            <a href="student.do?deleteStudent&id=${f.id}">删除</a>
            </th>
        </tr>  
        </c:forEach>  	                                
    </table>
</div>
</form>
</body>
</html>
