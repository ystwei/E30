


<#include "commons/top.ftl" encoding="utf-8" parse="true" >


<table align="left" bgcolor="#008800" border="0" cellspacing="2"
	cellpadding="2">
	<tr>
		<td bgcolor="#FFFF88">
			<a href="viewcategory.xhtml">
			
			</a>
		</td>
	</tr>
</table>

<p>

	<center>
		<h2>
		</h2>
	</center>

	<table align="center" bgcolor="#008800" border="0" cellspacing="2" cellpadding="3">
		<tr bgcolor="#CCCCCC">
			<td>
				产品序号
			</td>
			<td>
				宠物序号
			</td>
			<td>
				单价
			</td>
			<td>
				说明
			</td>
			<td>
				&nbsp;
			</td>
		</tr>

		<#list ilist as item>
		<tr bgcolor="#FFFF88">
			<td>
				<b> <a href="viewitem.xhtml">${item.product.productid}</a>
				</b>
			</td>
			<td>
			${item.itemid}
			</td>
			<td>
			${item.listprice}
			</td>
			<td>
			${item.attr1}${item.product.name} ${item.product.category.name}
			</td>
			<td>
				<a href="cartmain.xhtml"><img border="0"
						src="../images/button_add_to_cart.gif" />
				</a>
			</td>
		</tr>
		</#list>
		

		<tr>
			<td bgcolor="#FFFFFF" colspan="2">


			</td>
		</tr>
	</table>
<#include "commons/bottom.ftl" encoding="utf-8" parse="true" >