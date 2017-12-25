<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 
		request.getServerPort() + path + "/";	
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<link href="css/footer.css" rel="stylesheet">
<link href="css/user/usersignup.css" rel="stylesheet">
<title>注册-CampusStore</title>
</head>
<body>
	<%--头部 --%>
	<div class="head">
		<div class="head-con">
			<div class="head-logo">
				<a href="homepage.jsp"><img alt="CampusStore Logo" src="image/cs-logo.jpg"></a>
			</div>
			<div class="head-text">用户注册 </div>
			<div class="head-signin">
				已经是会员？<a href="view/user/usersignin.jsp">点击登录</a>
			</div>
			<div class="head-hr"></div>
			<ul>
				<li id="signup-1">① 设置用户名</li>
				<li id="signup-2">② 填写账号信息</li>
				<li id="signup-3">③ 密码设置</li>
				<li id="signup-4">④ 注册成功</li>
			</ul>
		</div>	
	</div>
	
	<%--主体 --%>
	<form action="user/signup" method="post" >
	<div class="signup-body">
		<div class="signup-model">
		<%--step1 用户名 --%>
			<div id="step1" class="signup-step1" style="display: block;">
				<table align="center" >
					<tr height="40px"/>
					<tr height="40px">
						<td width="150px" align="right" >用户昵称：</td>
						<td  colspan="2" align="left" >
							<input type="text" id="input-nickname" name="userInfo.nickname"/>
						</td>
					<tr height="30px">
						<td colspan="3" align="center" class="input-msg" id="input-nickname-msg">					
					</tr>
					<tr height="40px">
						<td width="150px" align="right" >账号ID：</td>
						<td  colspan="2" align="left" >
							<input type="text" id="input-account" name="userInfo.account"/>
						</td>
					</tr>
					<tr height="30px">
						<td colspan="3" align="center" class="input-msg" id="input-account-msg"></td>					
					</tr>
					<tr height="80px">
						<td colspan="3" align="center">
							<button type="button" id="signup-next1" style="width: 250px;">下一步</button>
						</td>
					</tr>
				</table>
			</div>
			<%--step2 账号信息 --%>
			<div id="step2" class="signup-step2">
				<table align="center">
					<tr height="40px"/>
					<tr height="40px">
						<td width="150px" align="right" >姓名：</td>
						<td  colspan="2" align="left" width="450px">
							<input type="text" id="input-name" name="userInfo.uname"/>
						</td>
					</tr>
					<tr height="30px">
						<td colspan="3" align="center" class="input-msg" id="input-name-msg">					
					</tr>
					<tr height="40px">
						<td width="150px" align="right" >手机号：</td>
						<td  colspan="2" align="left" width="450px" >
							<input type="text" id="input-phone" name="userInfo.phone"/>
						</td>
					</tr>
					<tr height="30px">
						<td colspan="3" align="center" class="input-msg" id="input-phone-msg">					
					</tr>
					<tr height="40px">
						<td align="right">验证码：</td>
						<td colspan="2" align="left" >
							<input type="text" id="input-checkcode"/>
						</td>
					</tr>
					<tr height="30px">
						<td colspan="3" align="center" class="input-msg" id="input-checkcode-msg">					
					</tr>
					<tr height="60px">
						<td >&nbsp</td>
						<td width="200px;" align="right" >
							<input style="width: 200px; height: 40px;" 
								type="text" id="checkcode" disabled="disabled" />
						</td>
						<td align="left" width="250px">
							<button type="button" id="fresh-checkcode" style="width: 100px;">刷新</button>
						</td>
					</tr>
					<tr height="20px"/>
					<tr height="100px">
						<td colspan="3" align="center">
							<button type="button" id="signup-next2" style="width: 250px;">下一步</button>
						</td>
					</tr>
				</table>
			</div>
			<%--step3 密码设置--%>
			<div id="step3" class="signup-step3">
				<table align="center">
					<tr height="35px"/>
					<tr height="40px">
							<td width="150px" align="right" >密码：</td>
							<td  colspan="2" align="left" width="450px">
								<input type="password" id="input-passcode" name="userInfo.passcode"/>
							</td>
					</tr>
					<tr height="30px">
						<td colspan="3" align="center" class="input-msg" id="input-passcode-msg"></td>					
					</tr>
					<tr height="30px">
						<td width="150px" align="right" >密码评估：</td>
						<td  colspan="2" align="left" width="450px">
							<ul>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</td>
					</tr>
					<tr height="40px">
							<td width="150px" align="right" >确认密码：</td>
							<td  colspan="2" align="left" width="450px">
								<input type="password" id="check-passcode"/>
							</td>
					</tr>
					<tr height="30px">
						<td colspan="3" align="center" class="input-msg" id="check-passcode-msg"></td>					
					</tr>
					<tr height="100px">
						<td colspan="3" align="center">
							<button type="submit" id="signup-next3" style="width: 250px;">现在注册</button>
						</td>
					</tr>
					
				</table>
			</div>
		</div>
	</div>
	</form>
	
	<%--网页尾部 --%>
	<div class="footer">
		<div class="footer-con">
			<div class="footer-nav">
				<ul>
					<li>联系我们</li>
					<li>商业合作</li>
					<li>关于CampusStore</li>
				</ul>
			</div>
			<div class="footer-contact">
				<ul>
					<li>邮箱：rede.lu.5945@gmail.com</li>
					<li>电话:18772102285</li>
				</ul>
			</div>
			<div class="footer-business">
				<ul>
					<li><a href="">>加入CampusStore</a></li>
					<li><a href="">>成为CampusStore的合作伙伴</a></li>
					<li><a href="">>赞助CampusStore</a></li>
					<li><a href="">>在CampusStore上投放广告</a></li>
				</ul>
			</div>
			<div class="footer-about">
				<ul>
					<li><a href="">>CampusStore信息</a></li>
					<li><a href="">>CampusStore新闻</a></li>
					<li><a href="">>CampusStore新手入门</a></li>
					<li><a href="">>CampusStore工作机会</a></li>
				</ul>
			</div>
			<div class="footer-info">
				<ul>
					<li>Copyright © 2017 CampusStore 版权所有</li>
					<li>强强科技  版权所有 粤ICP备170XXXXX号</li>
				</ul>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/user/usersignup.js"></script>
</html>