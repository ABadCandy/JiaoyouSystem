<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>

<html>
	<head>
		<title>emplist</title>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<style>
			
			#table1{
					border-spacing:0 8px;
			}
		</style>
		<script src="js/prototype-1.6.0.3.js"></script>
		<script>
			var arr = new Array();
			arr[0] = [new Option('--城市--','-1')];
			arr[1] = [new Option('--选择城市--','-1'),
			new Option('上饶','1'),
			new Option('南昌','2'),
			new Option('九江','3'),
			new Option('鹰潭','4'),
			new Option('赣州','5')];
			arr[2] = [new Option('--选择城市--','-1'),
			new Option('石家庄','11'),
			new Option('唐山','12'),
			new Option('秦皇岛','13'),
			new Option('保定','14'),
			new Option('衡水','13')];
			arr[3] = [new Option('--选择城市--','-1'),
			new Option('烟台','21'),
			new Option('济南','22'),
			new Option('淄博','23'),
			new Option('青岛','24')];
			
			function c(index){
				var city = document.getElementById('city');
				city.innerHTML = '';
				for(var i=0;i<arr[index].length;i++){
					city.options[i] = arr[index][i];
				}
			}
		</script>
	</head>
	<body onload="document['form1']['stature'].focus();">
		<% 
			String uid=(String)session.getAttribute("userId");
			if(uid==null){
				response.sendRedirect("regist.jsp");
				return;
			}
		%>
		<div id="wrap">
			<div id="top_content">
				<div id="header">
	<div id="rightheader">
		<p>
			2015-7-25
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
					<p >
					<span style="color:red;">以下*标注为必选项</span>
					
					</p>
					<h1>
						我的基本资料
					</h1>
					<form action="basic.do" method="get" name="form1">
						<table id="table1">
							<tr>
								<td>
									<span style="color:red;">*</span>&nbsp;身高:
								</td>
								<td>
									<input name="stature"/>(厘米)
								</td>
							</tr>
							<tr>	
								<td>
									&nbsp;&nbsp;&nbsp;学历:
								</td>
								<td>
									<select name="education" style="width:155px;">
										<option value="0">初中以下</option>
										<option value="1">高中</option>
										<option value="2">专科</option>
										<option value="3">本科及以上</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;&nbsp;&nbsp;婚姻状况:
								</td>
								<td>
									<select name="marriage" style="width:155px;">
										<option value="0">未婚</option>
										<option value="1">已婚</option>
										<option value="2">离异</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;&nbsp;&nbsp;月薪:
								</td>
								<td>
									<select name="salary" style="width:155px;">
										<option value="0">2000元以下</option>
										<option value="1">2000~5000元</option>
										<option value="2">5000~10000元</option>
										<option value="3">10000元以上</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
						&nbsp;&nbsp;&nbsp;所在地区:
								</td>
								<td>
									<select id="p1" name="province" style="width:120px;" onchange="c(this.selectedIndex);">
										<option value="-1">--请选择省份--</option>
										<option value="0">江西</option>
										<option value="1">河北</option>
										<option value="2">山东</option>
									</select>
									<select id="city" name="city" style="width:120px;">
										<option value="-1">--请选择城市--</option>
									</select>
								</td>	
							</tr>
							<tr>
								<td>
							<span style="color:red;">*</span>&nbsp;居住情况:
								</td>
								<td>
									<select name="house" style="width:155px;">
										<option value="-1">--请选择--</option>
										<option value="0">己购住房</option>
										<option value="1">暂未购房</option>
										<option value="2">租房</option>
										<option value="3">其它</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
				
									<span style="color:red;">*</span>&nbsp;购车情况:
								</td>
								<td>
									<select name="car" style="width:155px;">
										<option value="-1">--请选择--</option>
										<option value="0">已经购车</option>
										<option value="1">暂未购车</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<img src="img/save.jpg" onclick="document['form1'].submit();"/>
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
