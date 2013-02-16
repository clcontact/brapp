<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyBeerApp.Models.MainArticlePage>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%--<h2>Details</h2>

<fieldset>
    <legend>Article</legend>

    <div class="display-label">URL</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Article.URL) %>
    </div>

    <div class="display-label">InsertUserName</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Article.InsertUserName) %>
    </div>

    <div class="display-label">Notes</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Article.Notes) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.Article.ArticleID}) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>
<div>
<% 
    //ViewDataDictionary vdd = new ViewDataDictionary(this.ViewData) { { "Id", ViewData["Id"] } };
   // Html.RenderPartial("ArticleComment", Model.ArticleComment, vdd);
   Html.RenderAction("ArticleComment","ArticleComment", new {id=Model.Article.ArticleID});
    %>
</div>--%>
</asp:Content>
