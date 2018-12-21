<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>店家登陆</title>
<link rel="stylesheet" href="<%=request.getServletContext().getContextPath() %>/css/login.css">
</head>
<body>
	<div class="login">
        <div class="header">
            <h1>
                <a href="./login.jsp">店家登陆</a>
            </h1>
    </div>
    <h3><font color="red">${requestScope.msg}</font></h3>
    <form action="<%=request.getServletContext().getContextPath() %>/UserInfoController/UserLogin" method="post">
        <table>
	        <tr>
		        <td class="td1">用户名</td>
		        <td>
		           <input type="text"  class="input1" name="username">      
		        </td>
	        </tr>
	        <tr>
	        	<td class="td1">密码</td>
	        	<td>
	               <input type="password"  class="input1" name="password">      
	       		</td>
	        </tr>
	        <tr>
		        <td colspan="2">
			        <div class="btn-red">
			                <input type="submit" value="登录" id="login-btn">
			        </div>
		        </td>
	        </tr>
        </table>
        </form>
    </div>
</body>
</html>