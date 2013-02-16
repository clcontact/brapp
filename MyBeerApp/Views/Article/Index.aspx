<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MyBeerApp.Models.Article>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            URL
        </th>
        <th>
            InsertUserName
        </th>
        <th>
            Notes
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.URL) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.InsertUserName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Notes) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.ArticleID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.ArticleID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.ArticleID }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
