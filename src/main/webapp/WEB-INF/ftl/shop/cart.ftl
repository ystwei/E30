
<#include "commons/top.ftl" encoding="utf-8" parse="true" >

<table border="0" width="100%" cellspacing="0" cellpadding="0">
    <tr>
        <td valign="top" width="20%" align="left">
            <table align="left" bgcolor="#008800" border="0" cellspacing="2"
                   cellpadding="2">
                <tr>
                    <td bgcolor="#FFFF88">
                        <a href="main.xhtml"><b><font color="BLACK" size="2">&lt;&lt; 主菜单</font>
                        </b></a>
                    </td>
                </tr>
            </table>
        </td>
        <td valign="top" align="center">
            <h2 align="center">

            </h2>
            <form name="form1" method="post"
                  action="${ppath}/pet/up">

                <table align="center" bgcolor="#008800" border="0" cellspacing="2"
                       cellpadding="5" >
                    <tr bgcolor="#cccccc">
                        <td>
                            产品ID
                        </td>
                        <td>
                            宠物ID
                        </td>
                        <td>
                            是否有宠物
                        </td>
                        <td>
                            <b>宠物描述</b>
                        </td>
                        <td width="100">
                            宠物数量
                        </td>
                        <td>
                            宠物单价
                        </td>
                        <td>
                            操作
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
				<#assign  sum=0/>
				<#assign  oid=""/>
				<#list clist as cart>
                    <tr bgcolor="#FFFF88">
                        <td>
                            <b>

                                <a href="">${cart.item.product.productid}</a>

                            </b>
                        </td>
                        <td>

						${cart.itemid}
                            <input type="hidden" name="its" value="${cart.itemid}">
                            <input type="hidden" name="ois" value="${cart.orderid}">
							<#assign  oid="${cart.orderid}"/>
                        </td>
                        <td>
                            是

                        </td>
                        <td align="center">
						${cart.item.attr1}

                        </td>
                        <td>

                            <input type="number" value="${cart.quantity}" name="qts"/>

                        </td>
                        <td align="right">
						${cart.item.listprice}
                            <br/>
                        </td>
                        <td align="right">
                            <a href="${ppath}/pet/del/iid/${cart.itemid}/oid/${cart.orderid}"><img border="0"
                                                                                                   src="${ppath}/images/button_remove.gif" />
                            </a>

                        </td>
                        <td>
						${cart.item.listprice * cart.quantity}
							<#assign  sum=sum+cart.item.listprice * cart.quantity/>
                        </td>
                    </tr>

				</#list>

                    <tr bgcolor="#FFFF88">
                        <td colspan="7" align="right">
                            <b>
                                总计：${sum}
                            </b>

                        </td>
                        <td>
                            <input type="image" src="${ppath}/images/button_update_cart.gif"/>


                        </td>
                    </tr>
                </table>
                <center>


                </center>
            </form>


            <br />
            <center>
                <a href="${ppath}/pet/checkout/oid/${oid}/t/${sum}"><img border="0"
                                                                         src="${ppath}/images/button_checkout.gif" />
                </a>
            </center>


        </td>


        <td valign="top" width="20%" align="right">

        </td>

    </tr>
</table>

<br>
