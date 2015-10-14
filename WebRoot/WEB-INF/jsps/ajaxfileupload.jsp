<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <!-- 引入相关的js文件，相对路径  -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/public/js/ajaxfileupload.js"></script>

    <!-- 执行上传文件操作的函数 -->
      <script type="text/javascript">
          function ajaxFileUpload(){
               $.ajaxFileUpload(
                   {
                url:'update.do?method=uploader',            //需要链接到服务器地址
                secureuri:false,
                fileElementId:'houseMaps',                        //文件选择框的id属性
                dataType: 'json',                                     //服务器返回的格式，可以是json, xml
                success: function (data, status)            //相当于java中try语句块的用法
                {      
                    $('#result').html('添加成功');
                },
                error: function (data, status, e)            //相当于java中catch语句块的用法
                {
                    $('#result').html('添加失败');
                }
            }
                   
               );
              
          }
      </script>
  </head>
  
  <body>
      <div>  
        <input type="file" id="houseMaps" name="houseMaps"/> 
        <input type="button" value="提交" onclick="ajaxFileUpload()"/>
    </div> 
    <div id="result"></div>
    
  </body>
</html>
