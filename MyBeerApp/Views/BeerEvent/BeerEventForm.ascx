<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MyBeerApp.Models.BeerEventFormViewModel>" %>

<%=Html.ValidationSummary("Please correct the errors and try again.") %> 

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>

<% Html.EnableClientValidation(); %>
<% using (Html.BeginForm()) { %> 
<fieldset>
        <div id="dinnerDiv">
            <p> 
            <label for="Title">Event Title:</label> 
            <%= Html.TextBox("Title", Model.BeerEvent.Title) %> 
            <%=Html.ValidationMessage("Title", "*") %> 
            </p> 
            <p> 
            <label for="EventDate">Event Date:</label> 
            <%= Html.TextBox("EventDate", Model.BeerEvent.EventDate, new { @class = "date" })%> 
            <%= Html.ValidationMessage("EventDate", "*") %> 
            </p> 
            <p> 
            <label for="Description">Description:</label> 
            <%= Html.TextArea("Description", Model.BeerEvent.Description) %> 
            <%= Html.ValidationMessage("Description", "*") %> 
            </p> 
            <p> 
            <label for="Address">Address:</label> 
            <%= Html.TextBox("Address", Model.BeerEvent.Address) %> 
            <%= Html.ValidationMessage("Address", "*") %> 
            </p> 
<%--            <p> 
            <label for="ContactPhone">Contact Phone #:</label> 
            <%= Html.TextBox("ContactPhone", Model.Dinner.ContactPhone) %> 
            <%= Html.ValidationMessage("ContactPhone", "*") %> 
            </p> --%>
            <p>
            <%= Html.TextBox("Latitude", Model.BeerEvent.Latitude)%>
            <%= Html.TextBox("Longitude", Model.BeerEvent.Longitude)%>
            </p>
            <p> 
            <input type="submit" value="Save"/> 
            </p> 
        </div>
        <div id="mapDiv">    
            <% Html.RenderPartial("Map", Model.BeerEvent); %>
            (drag the pin in the map if it doesn't look right)
        </div> 
</fieldset>
<script type="text/javascript">
    $(document).ready(function () {
        NerdDinner.EnableMapMouseClickCallback();

        $("#Dinner_Address").blur(function (evt) {
            //If it's time to look for an address, 
            // clear out the Lat and Lon
            $("#BeerEvent_Latitude").val("0");
            $("#BeerEvent_Longitude").val("0");
            var address = jQuery.trim($("#Dinner_Address").val());
            if (address.length < 1)
                return;
            NerdDinner.FindAddressOnMap(address);
        });
    });
</script>
<% } %>

