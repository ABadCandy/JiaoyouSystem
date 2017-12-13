<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.io.*;" %>
<html>
	<head>
		<title>update Emp</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<script type="text/javascript" src="js/jquery-1.4.3.js"></script>
		<script type="text/javascript">
			function sendNote(){
				var v1 = $('#message').val();
				$.ajax({
					url:"send",
					type:"post",
					data:{'content':v1,'sendId':${user.id},'sendName':'${user.username}','receiverId':${id}},
					dataType:"html",
					success:function(data,status){
						$('#m1').remove();
						$('#message').after("<div id='m1'></div>");
						$('#m1').html(data).fadeOut(2000);
					},
					error:function(xhr,status,error){
						alert(xhr.status);
					}
				});
				$('#message').val('');
			}
		</script>
		<style>
			table{
				font-size:14px;
			}
			.td1{
				color:rgb(244,134,125);
			}
			
			.h2{
				background-color:#F0F0F0;
			}
			#m1{
				width:100px;
				height:30px;
				font-size:15px;
				font-weight:900;
				background-color:#FFEC8B;
				
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content">
				<div id="header">
	<div id="rightheader">
		<p>
		<br/>
		</p>
	</div>
	<div id="topheader">
		<h1 id="title">
			<a href="#">快捷交友</a>
		</h1>
	</div>
	<div id="navigation">
	</div>
</div>
				<div id="content">
					<p id="whereami">
					</p>
					<c:if test="${user.id==id}">
					<h2 class="h2">
						上传照片:
					</h2>
					<form action="load.do" method="post"
						enctype="multipart/form-data">
						<input type="file" name="file1" />
						<input type="submit" value=" 上传" />
					</form>
					<br/>
					</c:if>
					<h2 class="h2">
						照片列表:
					</h2>
					<table style="border-spacing:0 8px;">
							<% 
								String qty=(String)application.getAttribute("count");
								if(qty==null){qty="1";}
								int c=Integer.parseInt(qty);
								String path=this.getServletContext().getRealPath("upload");
								//String path="/home/soft01/tomcat/webapps/JiaoyouSystem/upload/pic_"+session.getAttribute("id");
								path=path+"/pic_"+session.getAttribute("id");
								File dir=new File(path);
								if(dir.exists()){
								File[] files=dir.listFiles();
								for(File f:files){
									if(f.exists()){
									String name=f.getName();
							%>
							<tr>
								<td>
									<img src="upload/pic_${id}/<%=name %>"
										width="300" height="200" />
								</td>
							</tr>
							<%}}}%>
						<tr>
								<td>
									<textarea name="message" id="message" rows="5" cols="35"></textarea>
								</td>
							</tr>
						<tr><td align="center"><img src="img/dzf.gif" onclick="sendNote();"/>&nbsp;<img src="img/fx.gif" />&nbsp;<img src="img/gz.gif" /></td></tr>
					</table>
					<br/>
					<h2 class="h2">
						内心独白:
						<c:if test="${user.id==id}">
						<a href="noteModi.jsp">修改</a>
						</c:if>
					</h2>
					<table width="50%">
						<tr><td>${note.text}</td></tr>
					</table>
					<br/>
					<h2 class="h2">
						详细资料:
						<c:if test="${user.id==id}">
						<a href="detailModi.jsp">修改</a>
						</c:if>
					</h2>
					<table  width="60%">
						<tr>
							<td class="td1">姓名:</td>
							<td>${u.name}</td>
							<td class="td1">电话</td>
							<td>${u.phone}</td>
						</tr>
						<tr>
							<td class="td1">身高:</td>
							<td>${basic.stature}</td>
							<td class="td1">学历:</td>
							<td>
								<c:choose>
									<c:when test="${basic.education=='0'}">初中以下</c:when>
									<c:when test="${basic.education=='1'}">高中</c:when>
									<c:when test="${basic.education=='2'}">专科</c:when>
									<c:when test="${basic.education=='3'}">本科以上</c:when>
								</c:choose>
							</td>
						</tr>
						<tr>
							<td class="td1">婚姻状况:</td>
							<td>
								<c:choose>
									<c:when test="${basic.marriage=='0'}">未婚</c:when>
									<c:when test="${basic.marriage=='1'}">已婚</c:when>
									<c:when test="${basic.marriage=='2'}">离异</c:when>
								</c:choose>
							</td>
							<td class="td1">薪水:</td>
							<td>
								<c:choose>
									<c:when test="${basic.salary=='0'}">2000元以下</c:when>
									<c:when test="${basic.salary=='1'}">2000~5000元</c:when>
									<c:when test="${basic.salary=='2'}">5000~10000元</c:when>
									<c:when test="${basic.salary=='3'}">10000元以上</c:when>
								</c:choose>
							</td>
						</tr>
						<tr>
							<td class="td1">省份:</td>
							<td>
								<c:choose>
									<c:when test="${basic.province=='0'}">江西</c:when>
									<c:when test="${basic.province=='1'}">浙江</c:when>
									<c:when test="${basic.province=='2'}">广东</c:when>
									<c:when test="${basic.province=='-1'}">未知</c:when>
								</c:choose>
							</td>
							<td class="td1">城市:</td>
							<td>
								<c:choose>
									<c:when test="${basic.city=='1'}">上饶</c:when>
									<c:when test="${basic.city=='2'}">南昌</c:when>
									<c:when test="${basic.city=='3'}">九江</c:when>
									<c:when test="${basic.city=='4'}">鹰潭</c:when>
									<c:when test="${basic.city=='5'}">赣州</c:when>
									<c:when test="${basic.city=='11'}">杭州</c:when>
									<c:when test="${basic.city=='12'}">玉环</c:when>
									<c:when test="${basic.city=='13'}">金华</c:when>
									<c:when test="${basic.city=='14'}">台州</c:when>
									<c:when test="${basic.city=='15'}">永康</c:when>
									<c:when test="${basic.city=='21'}">深圳</c:when>
									<c:when test="${basic.city=='22'}">广州</c:when>
									<c:when test="${basic.city=='23'}">汕头</c:when>
									<c:when test="${basic.city=='23'}">南雄</c:when>
									<c:when test="${basic.city=='-1'}">未知</c:when>
								</c:choose>
							</td>
						</tr>
						<tr>
							<td class="td1">居住情况:</td>
							<td>
								<c:choose>
									<c:when test="${basic.house=='-1'}">未知</c:when>
									<c:when test="${basic.house=='0'}">已购房子</c:when>
									<c:when test="${basic.house=='1'}">暂时未购</c:when>
									<c:when test="${basic.house=='2'}">租房</c:when>
									<c:when test="${basic.house=='3'}">其他</c:when>
								</c:choose>
							</td>
							<td class="td1">购车情况:</td>
							<td>
								<c:choose>
									<c:when test="${basic.car=='-1'}">未知</c:when>
									<c:when test="${basic.car=='0'}">已经购车</c:when>
									<c:when test="${basic.car=='1'}">暂未购车</c:when>
								</c:choose>
							</td>
						</tr>
					</table>
					<br/>
					<h2 class="h2">
						择友条件:
						<c:if test="${user.id==id}">
						<a href="chooseModi.jsp">修改</a>
						</c:if>
					</h2>
					<table width="60%">
						<tr>
							<td class="td1">身高范围:</td>
							<td>
								<c:choose>
									<c:when test="${choose.stature=='0'}">160cm以下</c:when>
									<c:when test="${choose.stature=='1'}">160cm~170cm</c:when>
									<c:when test="${choose.stature=='2'}">170cm~180cm</c:when>
									<c:when test="${choose.stature=='3'}">180cm以上</c:when>
								</c:choose>
							</td>
							<td class="td1">学历:</td>
							<td>
								<c:choose>
									<c:when test="${choose.education=='0'}">初中以下</c:when>
									<c:when test="${choose.education=='1'}">高中</c:when>
									<c:when test="${choose.education=='2'}">专科</c:when>
									<c:when test="${choose.education=='3'}">本科以上</c:when>
								</c:choose>
							</td>
						</tr>
						<tr>
							<td class="td1">省份:</td>
							<td>
								<c:choose>
									<c:when test="${choose.province=='0'}">江西</c:when>
									<c:when test="${choose.province=='1'}">浙江</c:when>
									<c:when test="${choose.province=='2'}">广东</c:when>
									<c:when test="${choose.province=='-1'}">未知</c:when>
								</c:choose>
							</td>
							<td class="td1">城市:</td>
							<td>
								<c:choose>
									<c:when test="${choose.city=='1'}">上饶</c:when>
									<c:when test="${choose.city=='2'}">南昌</c:when>
									<c:when test="${choose.city=='3'}">九江</c:when>
									<c:when test="${choose.city=='4'}">鹰潭</c:when>
									<c:when test="${choose.city=='5'}">赣州</c:when>
									<c:when test="${choose.city=='11'}">杭州</c:when>
									<c:when test="${choose.city=='12'}">玉环</c:when>
									<c:when test="${choose.city=='13'}">金华</c:when>
									<c:when test="${choose.city=='14'}">台州</c:when>
									<c:when test="${choose.city=='15'}">永康</c:when>
									<c:when test="${choose.city=='21'}">深圳</c:when>
									<c:when test="${choose.city=='22'}">广州</c:when>
									<c:when test="${choose.city=='23'}">汕头</c:when>
									<c:when test="${choose.city=='23'}">南雄</c:when>
									<c:when test="${choose.city=='-1'}">未知</c:when>
								</c:choose>
							</td>
						</tr>
						<tr>
							<td class="td1">婚姻状况:</td>
							<td>
								<c:choose>
									<c:when test="${choose.marriage=='0'}">未婚</c:when>
									<c:when test="${choose.marriage=='1'}">已婚</c:when>
									<c:when test="${choose.marriage=='2'}">离异</c:when>
								</c:choose>
							</td>
						</tr>
					</table>
					<br/>
				</div>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;<a href="list.do"><h2>继续查看其它用户</h2></a>
			</div>
			<div id="footer">
	<div id="footer_bg">
			Copyright (C) 快捷交友 2004-2008, All Rights Reserved
			京ICP证041189号
	</div>
</div>
		</div>
	</body>
</html>
