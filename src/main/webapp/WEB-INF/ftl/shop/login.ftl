

<#include "commons/top.ftl" encoding="utf-8" parse="true" >
	<form id="form1" name="form1" action="${ppath}/acc/login" method="post">
	<table align="center" border="0">
		<tr>
			<td colspan="2">
				<#if error?exists>

					${error}2222

				<#else >
                    请输入你的用户名和密码
				</#if>
				<br />
				&nbsp;
			</td>
		</tr>
		<tr>
			
			<td>
				用户名：<input type="text" name="username" id="username"/>
			</td>
		</tr>
		<tr>
			
			<td>
                密码：<input type="text" name="password" id="password"/>
			</td>
		</tr>
		<tr>
			<td>
                <input type="image" border="0" src="../images/button_submit.gif" />
			</td>
			<td>
                <a href="${ppath}/acc/rmain"><img border="0"
                                                  src="../images/button_register_now.gif" />
                </a>
			</td>
		</tr>
	</table>
    </form>

<center>

</center>
<#include "commons/bottom.ftl" encoding="utf-8" parse="true">