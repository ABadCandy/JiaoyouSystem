<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>login</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="stylesheet" type="text/css"
			href="css/style.css" />
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
			<table align="center">
			<tr>
			<td>	<h1 id="title">
	<a href="#" style="color:yellow;font-size:50px;;font-weight:1200"align="center">快捷交友网欢迎您</a>
						</h1>
							</td>
							</tr>
			</table>
					<img src="img/logo.png" width="100%" height="220" /></br>
					</div>
					<div id="navigation">
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						会员登录
					</h1>
					<form action="login.do" method="get">
						<table style="color:blue;"cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									用户名:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="username" />
									<span style="color:red;"></span>
								</td>
								<%
									String login_err=(String)request.getAttribute("login_err"); 
								%>
								<td style="color:red;font-size:15px;">
									<%=login_err==null?"":login_err%>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									密码:
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="pwd" />
								</td>
							</tr>
						</table>
				
			
						<p>
							<input type="submit"  class="button" value="确认 &raquo;" />&nbsp;还不是我们的会员?&nbsp;<a href="regist.jsp">赶快加入</a>
						</p>
						</form>
						<form action="list.do" method="get">
								<table style="color:fuchsia;"border="1px" align="center" width="100%">
				<tr>
					<td align="center">同城寻友</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="choose" value="form"/>
						性别：<input type="radio" name="sex" value="m"/>男
							<input type="radio" name="sex" value="f"/>女<br/>
							<input type="checkbox" name="choose" value="form"/>
							所在城市：<select name="city">
								<option value="xs">江西</option>
								<option value="cxy">河北</option>
								<option value="gwy">山东</option>
										</select></br>
							<input type="checkbox" name="choose" value="form"/>
							年龄：<input  type="text" name="year" value=""/>岁到<input type="text" name="year" value=""/>岁<br>
							<input  type="button" name="bt1" value="搜索"/>
					</td>
				</tr>
			</table>
					</form>
				</div>
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
