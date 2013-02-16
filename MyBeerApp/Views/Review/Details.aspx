<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyBeerApp.Models.Review>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Review</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.BeerID) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.BeerID) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Rating) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Rating) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Notes) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Notes) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ReviewDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ReviewDate) %>
    </div>

</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.ReviewID }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
