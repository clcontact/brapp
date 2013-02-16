<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyBeerApp.Models.Beer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Beer</legend>


    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.StyleID) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.StyleID) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ImagePath) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ImagePath) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CompanyID) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CompanyID) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.BeerID }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
