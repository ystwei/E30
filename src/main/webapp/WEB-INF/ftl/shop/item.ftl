
<#include "commons/top.ftl" encoding="utf-8" parse="true" >

<table align="left" bgcolor="#008800" border="0" cellspacing="2"
	cellpadding="2">
	<tr>
		<td bgcolor="#FFFF88">
			<a href="viewproduct.xhtml">
				${item.itemid}
			</a>
		</td>
	</tr>
</table>

<p>
<table align="center" bgcolor="#008800" cellspacing="2" cellpadding="3"
		border="0" width="60%">
		<tr bgcolor="#FFFF88">
			<td bgcolor="#FFFFFF">
				<img src="${ppath}/images/${item.product.pic}">
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td width="100%" bgcolor="#cccccc">
			${item.product.productid}
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				<b><font size="4">
				${item.listprice}
				
				</font>
				</b>
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				<font size="3"><i>${item.attr1}</i>
				</font>
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				

			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				
			</td>
		</tr>

		<tr bgcolor="#FFFF88">
			<td>
				<a href="${ppath}/pet/add/iid/${item.itemid}/qty/1"><img border="0"
						src="${ppath}/images/button_add_to_cart.gif" />
				</a>
			</td>
		</tr>
	</table>
<#include "commons/bottom.ftl" encoding="utf-8" parse="true" >