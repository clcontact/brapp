<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MyBeerApp.Models.Review>" %>

<script src="<%: Url.Content("~/Scripts/jquery-1.7.1.min.js") %>"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Review</legend>
        <p>
        <label for="Company">Beer Name:</label>
        <%= Html.TextBox("Beer", Model.BeerName)%>
        <%= Html.TextBox("BeerID",Model.BeerID) %>
        </p>        
        <p>
        <label for="Title">Review Date:</label>
        <%= Html.TextBox("ReviewDate", Model.ReviewDate) %>
        <%=Html.ValidationMessage("ReviewDate", "*") %>
        </p>

        <p>
        <label for="Address">Notes:</label>
        <%= Html.TextArea("Notes", Model.Notes) %>
        <%= Html.ValidationMessage("Notes", "*") %>
        </p>
        <p>
        <label for="Rating">Rating:</label>
    
        <%= Html.TextBox("Rating", Model.Rating)%>               
        <%= Html.ValidationMessage("Rating", "*") %>
        </p>


        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>
