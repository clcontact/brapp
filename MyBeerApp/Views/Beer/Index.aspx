﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MyBeerApp.Models.Beer>>" %>

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
            <%: Html.DisplayNameFor(model => model.Style) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Name) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ImagePath) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Company) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Style.Name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ImagePath) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Company.Name) %>
        </td>
        <td>
             <%: Html.ActionLink("Add Review", "../Review/Create/"+item.BeerID) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.BeerID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.BeerID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.BeerID }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
