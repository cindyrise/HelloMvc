﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<HellowMvc.Models.LocalPasswordModel>" %>

<h3>更改密码</h3>

<% using (Html.BeginForm("Manage", "Account")) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary() %>

    <fieldset>
        <legend>“更改密码”表单</legend>
        <ol>
            <li>
                <%: Html.LabelFor(m => m.OldPassword) %>
                <%: Html.PasswordFor(m => m.OldPassword) %>
            </li>
            <li>
                <%: Html.LabelFor(m => m.NewPassword) %>
                <%: Html.PasswordFor(m => m.NewPassword) %>
            </li>
            <li>
                <%: Html.LabelFor(m => m.ConfirmPassword) %>
                <%: Html.PasswordFor(m => m.ConfirmPassword) %>
            </li>
        </ol>
        <input type="submit" value="更改密码" />
    </fieldset>
<% } %>
