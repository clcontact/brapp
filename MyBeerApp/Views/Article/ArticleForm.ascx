<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MyBeerApp.Models.Article>" %>

<script src="<%: Url.Content("~/Scripts/jquery-1.5.1.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Article</legend>

        <%: Html.HiddenFor(model => model.ArticleID) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.URL) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.URL) %>
            <%: Html.ValidationMessageFor(model => model.URL) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.InsertUserName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.InsertUserName) %>
            <%: Html.ValidationMessageFor(model => model.InsertUserName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Notes) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Notes) %>
            <%: Html.ValidationMessageFor(model => model.Notes) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>
