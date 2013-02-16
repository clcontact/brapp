<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyBeerApp.Models.ArticleComment>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    View1
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>View1</h2>

<fieldset>
    <legend>ArticleComment</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ArticleID) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ArticleID) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Notes) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Notes) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UserName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UserName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.InsertDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.InsertDate) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.CommentID }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
