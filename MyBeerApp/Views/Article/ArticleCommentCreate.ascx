<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MyBeerApp.Models.ArticleComment>" %>

<script src="<%: Url.Content("~/Scripts/jquery-1.5.1.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>
<script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
<% using (Ajax.BeginForm("ArticleCommentCreate",null))       
   { %>
    <%: Html.ValidationSummary(true)%>
    <fieldset>
        <legend>ArticleComment</legend>

        <div class="editor-label">
            <%: Html.TextBoxFor(model => model.ArticleID)%>
            <%: Html.LabelFor(model => model.Notes)%>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Notes, "ArticleCommentCreate")%>
            <%: Html.ValidationMessageFor(model => model.Notes)%>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UserName)%>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UserName, "ArticleCommentCreate")%>
            <%: Html.ValidationMessageFor(model => model.UserName)%>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.InsertDate)%>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.InsertDate)%>
            <%: Html.ValidationMessageFor(model => model.InsertDate)%>
        </div>

        <p>
            <input type="submit" value="Add Some Notes" id="ArtCommentNote"/>
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>
