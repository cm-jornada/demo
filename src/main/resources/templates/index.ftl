<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html style="text-align: center;">
    <head>
        <title>springboot demo</title>
    </head>
    <body>
		<div class="wrapper">
			<h1>hello word</h1>
			<button type="button"><a href="/user/maintain/0/insert">添加用户</a></button>
			<table border="1" style="width: 100%;margin-top: 24px;">
				<#if userList??>
					<tr>
						<th>用户名</th>
						<th>状态</th>
						<th>手机号</th>
						<th>邮箱</th>
						<th>更新时间</th>
						<th>操作</th>
					</tr>
					<#list userList as user>
					<tr>
						<td>${user.userName}</td>
						<td>${user.enable}</td>
						<td>${user.phone}</td>
						<td>${user.email}</td>
						<td>${user.updateTime}</td>
						<td>
							<a href="/user/maintain/${user.id}/view">查看</a>
							<a href="/user/maintain/${user.id}/edit">编辑</a>
						</td>
					</tr>
					</#list>
				</#if>
			</table>
		</div>
    </body>
</html>