﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<TITLE>订桌信息查询</TITLE>
	<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
	</head>
	<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr valign="top">
				<td>
					<table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#aec3de">
						<tr align="left" bgcolor="#F2FDFF">
							<td colspan="17" background="images/table_header.gif">订桌信息列表</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr valign="top">
			  <td bgcolor="#FFFFFF">
			  <table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#aec3de">
						
					<tr align="right" bgcolor="#ebf0f7">
					  <td colspan="21">
					  <table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" >
						<tr align="left" >
							<td colspan="17">
								<form action="dingzhuoxinxiList2.do" name="myform" method="post">
									查询   球桌号：<input name="qiuzhuohao" type="text" id="qiuzhuohao" style='border:solid 1px #000000; color:#666666' size="12" />  每小时计费：<input name="meixiaoshijifei" type="text" id="meixiaoshijifei" style='border:solid 1px #000000; color:#666666' size="12" />  会员编号：<input name="huiyuanbianhao" type="text" id="huiyuanbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  会员等级：<input name="huiyuandengji" type="text" id="huiyuandengji" style='border:solid 1px #000000; color:#666666' size="12" />  折扣：<input name="zhekou" type="text" id="zhekou" style='border:solid 1px #000000; color:#666666' size="12" />
									<input type="submit" value="查询" />
								</form>								</td>
						</tr></table>
					  </td>
			    </tr>
					
						<tr align="center">
						<td style="padding-left:0px; padding-right:0px;"><table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#ebf0f7">
                          <tr>
                            <td align="center" bgcolor="#ebf0f7" width="30px">序号</td>
                            <td align='center'>球桌号</td>
    <td align='center'>每小时计费</td>
    <td align='center'>订桌时间</td>
    <td align='center'>会员编号</td>
    <td align='center'>姓名</td>
    <td align='center'>会员等级</td>
    <td align='center'>折扣</td>
    
    
                            <td align="center" bgcolor="#ebf0f7" width="150px"> 添加时间 </td>
                            <td align="center" bgcolor="#ebf0f7" width="150px"> 操作 </td>
                          </tr>
                          <%
					int i=0;
				%>
                          <c:forEach items="${list }" var="u">
                            <%
					i++;
				%>
                            <tr align="center" bgcolor="#FFFFFF">
                              <td align="center"><%=i%></td>
                             <td>${u.qiuzhuohao}</td>
    <td>${u.meixiaoshijifei}</td>
    <td>${u.addtime }</td>
    <td>${u.huiyuanbianhao}</td>
    <td>${u.xingming}</td>
    <td>${u.huiyuandengji}</td>
    <td>${u.zhekou}</td>
    
    
                              <td align="center"> ${u.addtime } </td>
                              <td align="center"><a href="fufei_add.jsp?id=${u.id }&shichang=${u.addtime } ">付费</a> <a href="deleteDingzhuoxinxi.do?id=${u.id }"
										onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">删除</a> <a href="dingzhuoxinxiDetail.do?id=${u.id }">详细</a></td>
                            </tr>
                          </c:forEach>
                        </table></td>
						</tr>
					</table>
					
					
			  </td>
	  </tr>
		</table>
		
		
		
			<p align="center"> <c:if test="${sessionScope.p==1 }">
		 <c:if test="${page.page>1}">
              <a href="dingzhuoxinxiList2.do?page=1" >首页</a>
             <a href="dingzhuoxinxiList2.do?page=${page.page-1 }"> 上一页</a>             </c:if>
    	     <c:if test="${page.page<page.totalPage}">
			<a href="dingzhuoxinxiList2.do?page=${page.page+1 }">下一页</a>
			<a href="dingzhuoxinxiList2.do?page=${page.totalPage }">末页</a>		    </c:if>		
	</c:if>
	</p>
			
			
			
			
			
	</body>
</html>
