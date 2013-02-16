<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MyBeerApp.Models.Recipe>" %>

<script src="<%: Url.Content("~/Scripts/jquery-1.5.1.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Recipe</legend>

        <%: Html.HiddenFor(model => model.RecipeID) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Title) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Title) %>
            <%: Html.ValidationMessageFor(model => model.Title) %>
        </div>
                
        <div class="editor-label">
            <%: Html.LabelFor(model => model.StyleID) %>
        </div>
        <div class="editor-field">
            <%= Html.DropDownList("StyleID",ViewData["Style"] as SelectList, Model.StyleID) %>
            <%: Html.ValidationMessageFor(model => model.StyleID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Ingredients) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Ingredients) %>
            <%: Html.ValidationMessageFor(model => model.Ingredients) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Directions) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Directions)%>
            <%: Html.ValidationMessageFor(model => model.Directions) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PrepTime) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PrepTime) %>
            <%: Html.ValidationMessageFor(model => model.PrepTime) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CookTime) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CookTime) %>
            <%: Html.ValidationMessageFor(model => model.CookTime) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ReadyIn) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ReadyIn) %>
            <%: Html.ValidationMessageFor(model => model.ReadyIn) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.RecipeYield) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.RecipeYield) %>
            <%: Html.ValidationMessageFor(model => model.RecipeYield) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Notes) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Notes)%>
            <%: Html.ValidationMessageFor(model => model.Notes) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Rating) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Rating) %>
            <%: Html.ValidationMessageFor(model => model.Rating) %>
        </div>
       <div class="editor-label">
            <%: Html.LabelFor(model => model.ABV) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ABV) %>
            <%: Html.ValidationMessageFor(model => model.ABV) %>
        </div>
       <div class="editor-label">
            <%: Html.LabelFor(model => model.IBU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.IBU) %>
            <%: Html.ValidationMessageFor(model => model.IBU) %>
        </div>



        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>
