<#assign spring=JspTaglibs["http://www.springframework.org/tags"]/>
<#assign form=JspTaglibs["http://www.springframework.org/tags/form"] />

<#include "commons/top.ftl" encoding="utf-8" parse="true"/>
<br/>


<@form.form method="post" action="${ppath}/acc/register" commandName="account">
<TABLE cellpadding=10 cellspacing=0 align=center border=1 width="400"
       bgcolor=#dddddd>
<TR>
<TD>
    <FONT color=darkgreen>
        <H3>
            基本信息
        </H3>
    </FONT>
<TABLE border=0 bgcolor=#FFFF88 width="100%">
<TR bgcolor=#FFFF88>
<TD>
    用户名：<input  type="text" name="username" id="username"/>
    <@form.errors path="username"/>

</TD>
</TR>
<TR bgcolor=#FFFF88>

<TD>
    密&nbsp;码：<@form.input  path="password" id="password"/>
        <@form.errors path="password"/>
    </TD>
    </TR>
    <TR bgcolor=#FFFF88>

    <TD>
        校密码：<@form.input  path="repassword" id="repassword"/>
            <@form.errors path="repassword"/>
        </TD>
        </TR>
        </TABLE>


            <FONT color=darkgreen><H3>
                详细信息
            </H3>
            </FONT>

        <TABLE bgcolor="#FFFF88" border=0
               bgcolor=#FFFF88 width="100%">
        <TR bgcolor=#FFFF88>

        <TD>
            邮&nbsp;箱：<@form.input path="email" id="email"/>
                <@form.errors path="email"/>
            </TD>
            </TR>

            <TR bgcolor=#FFFF88>

            <TD>
                姓&nbsp;名：<@form.input path="xm" id="xm"/>
                    <@form.errors path="xm"/>
                </TD>
                </TR>

                <TR bgcolor=#FFFF88>

                <TD>

                    地&nbsp;址：<@form.input path="address" id="address"/>

                        <@form.errors path="address"/>
                    </TD>
                    </TR>


                    </TABLE>


                        <FONT color=darkgreen><H3>
                            个人设置
                        </H3>
                        </FONT>

                        <TABLE bgcolor="#FFFF88" border=0 cellpadding=3 cellspacing=1 width="100%">
                            <TR bgcolor=#FFFF88>

                                <TD>
                                    你的语言
                                    <select id="lan" name="profile.lang">
                                        <option value="eng">
                                            英语

                                        </option>
                                        <option value="chi">
                                            中文
                                        </option>
                                    </select>
                                </TD>
                            </TR>
                            <TR bgcolor=#FFFF88>

                                <TD>
                                    你喜爱的宠物


                                    <select id="catid" name="profile.catid">
                                        <#list clist as category>

                                            <option value="${category.catid}">
                                            ${category.name}

                                            </option>

                                        </#list>


                                    </select>
                                </TD>
                            </TR>

                        </TABLE>
                    </TABLE>

                    <BR>
                    <CENTER>
                        <input border=0 type="image" src="../images/button_submit.gif"/>
                    </CENTER>


</@form.form>


<#include "commons/bottom.ftl" encoding="utf-8" parse="true"/>