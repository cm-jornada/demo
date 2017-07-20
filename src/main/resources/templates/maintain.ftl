<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html  style="text-align: center;">
    <head>
        <title>springboot demo</title>
    </head>
    <body>
		<div class="wrapper">
			<h1>用户</h1>
			<form id="userForm" action="" method="post">
				<table border="1" style="width: 100%;margin-top: 24px;">
					<#if user??>
						<input type="hidden" name="id" value="${user.id}"/>
						<#if type='edit'>
							<tr>
								<td>更新时间</td>
								<td>${user.updateTime}</td>
								<td>状态</td>
								<td>
									<select name="enable">
									  <option value ="0">未激活</option>
									  <option value ="1" <#if "1"==user.enable>selected="selected"</#if>>激活</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>用户名</td>
								<td><input type="text" name="userName" value="${user.userName}"/></td>
								<td>密码</td>
								<td><input type="password" name="password" value="${user.password}"/></td>
							</tr>
							<tr>
								<td>手机号</td>
								<td><input type="text" name="phone" value="${user.phone}"/></td>
								<td>邮箱</td>
								<td><input type="text" name="email" value="${user.email}"/></td>
							</tr>
							<tr>
								<td colspan=4><input type="button" onclick="formSubmit('edit')" value="保存"/></td>
							</tr>
						<#else>
							<tr>
								<td>更新时间</td>
								<td>${user.updateTime}</td>
								<td>状态</td>
								<td>
									<#if "0"==user.enable>
										未激活
									<#else>
										激活
									</#if>
								</td>
							</tr>
							<tr>
								<td>用户名</td>
								<td>${user.userName}</td>
								<td>密码</td>
								<td>${user.password}</td>
							</tr>
							<tr>
								<td>手机号</td>
								<td>${user.phone}</td>
								<td>邮箱</td>
								<td>${user.email}</td>
							</tr>
						</#if>
					<#else>
						<tr>
							<td>用户名</td>
							<td><input type="text" name="userName"/></td>
							<td>密码</td>
							<td><input type="password" name="password"/></td>
						</tr>
						<tr>
							<td>手机号</td>
							<td><input type="text" name="phone"/></td>
							<td>邮箱</td>
							<td><input type="text" name="email"/></td>
						</tr>
						<tr>
							<td colspan=4><input type="button" onclick="formSubmit('save')" value="保存"/></td>
						</tr>
					</#if>
				</table>
			</form>
		</div>
    </body>
    <script language="javascript">
		function formSubmit(type){
			var form = document.getElementById("userForm");
			form.action="/user/save/" + type;
			form.submit();
		}
	</script>
</html>