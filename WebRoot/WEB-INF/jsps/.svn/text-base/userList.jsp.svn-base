<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <title>My JSP 'personList.jsp' starting page</title>
    <script type="text/javascript">
    	function del(id){
    		var v = window.confirm('你确定要删除当前记录吗？');
    		if(v){
    			window.location.href = '<%=path%>/user/deleteUser?id=' + id;
    		}
    		
    	}
    	
    	function deleteAll(){
    		var ids = document.getElementsByName('ids');
    		var idValues = '';
    		for(var i=0;i<ids.length;i++){
    			if(ids[i].checked == true){
    				idValues += ids[i].value + ",";
    			}
    		}
    		var v = window.confirm('你确定要删除当前记录吗？');
    		if(v){
    			window.location.href = '<%=path%>/user/deleteUsers?ids=' + idValues;
    		}
    	}
    	
    	function savePersonUI(){
    		window.location.href = '<%=path%>/user/saveUserUI';
    	}
    </script>
  </head>
  
  <body>
  <input type="button" value="添加User" onclick="saveUserUI();">
  <input type="button" value="批量删除" onclick="deleteAll();">
   <table border="1" width="70%">
   	<tr>
   		<td>
   			<input type="checkbox" name="checkAll">
   		</td>
   		<td>id</td>
   		<td>name</td>
   		<td>email</td>
   		<td>删除</td>
   		<td>修改</td>
   	</tr>
   	<c:forEach items="${users}" var="p">
	   	<tr>
	   		<td><input type="checkbox" name="ids" value="${p.id }"></td>
	   		<td>${p.id }</td>
	   		<td>${p.name }</td>
	   		<td>${p.email }</td>
	   		<td><input type="button" value="删除" onclick="del('${p.id }')"></td>
	   		<td><a href="<%=path %>/person/updatePersonUI?id=${p.id }">修改</a></td>
	   	</tr>
   	</c:forEach> 
   </table>
  </body>
</html>
