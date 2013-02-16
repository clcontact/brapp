<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MyBeerApp.Models.Recipe>>" %>

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
            Title
        </th>
        <th>
            Notes
        </th>
        <th>
            Rating
        </th>
        <th>
            Style
        </th>
        <th>
            ABV
        </th>
        <th>
            IBU
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Title) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Notes) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Rating) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Style) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ABV) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.IBU) %>
        </td>

        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.RecipeID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.RecipeID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.RecipeID }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
