<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body onload="document['form1']['note'].focus();">
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
					<h1>
						修改内心独白
					</h1>
					<form action="noteModi.do?" method="post" name="form1">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<textarea name="note" rows="10" cols="60">${note.text}</textarea>
								</td>
							</tr>
							<tr>
								<td>
									<input type="submit" value="提交"/>
								</td>
							</tr>
							<tr>
								<td>
									温馨提示：
									<br />
									1、内心独白字数需在20-1000字之间。
									<br />
									2、内心独白中请勿出现QQ、MSN、电话号码以及网址、广告、色情或其他不健康的内容。
									<br />
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
