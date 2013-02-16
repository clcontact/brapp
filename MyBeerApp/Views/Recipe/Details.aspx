<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyBeerApp.Models.Recipe>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Recipe</legend>

    <div class="display-label">StyleID</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Style) %>
    </div>
    <div class="display-label">Ingredients</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Ingredients) %>
    </div>

    <div class="display-label">Directions</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Directions) %>
    </div>

    <div class="display-label">PrepTime</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PrepTime) %>
    </div>

    <div class="display-label">CookTime</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CookTime) %>
    </div>

    <div class="display-label">ReadyIn</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ReadyIn) %>
    </div>

    <div class="display-label">RecipeYield</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.RecipeYield) %>
    </div>

    <div class="display-label">Notes</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Notes) %>
    </div>

    <div class="display-label">Rating</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Rating) %>
    </div>

    <div class="display-label">ABV</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ABV) %>
    </div>
    <div class="display-label">IBU</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IBU) %>
    </div>

</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.RecipeID }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>
