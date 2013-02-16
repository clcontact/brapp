<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MyBeerApp.Models.Beer>" %>

<%= Html.ValidationSummary("Please correct the errors and try again.") %>
 
<% using (Html.BeginForm()) { %>
 
<fieldset>
    <legend>Some Legend</legend>
<p>
<label for="Title">Beer Name:</label>
<%= Html.TextBox("Name", Model.Name) %>
<%=Html.ValidationMessage("Name", "*") %>
</p>

<p>
<label for="Address">Price:</label>
<%= Html.TextBox("Price", Model.Price) %>
<%= Html.ValidationMessage("Price", "*") %>
</p>
<p>
<label for="StyleDD">Style:</label>
    
<%= Html.DropDownList("StyleID", ViewData["Style"] as SelectList,Model.StyleID) %>               
<%= Html.ValidationMessage("StyleDD", "*") %>
</p>
<p>
<label for="Company">Company:</label>
<%= Html.DropDownList("CompanyID", ViewData["Company"] as SelectList, Model.CompanyID) %>
<%= Html.ValidationMessage("CompanyDD", "*") %>
</p>
 
<p>
<input type="submit" value="Save"/>
</p>
</fieldset>
 
<% } %>