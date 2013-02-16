<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyBeerApp.Models.BeerEvent>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Event: <%=Html.Encode(Model.Title) %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details: <%=Html.Encode(Model.Title) %></h2>
<div id="dinnerDiv" style="border 1px solid black">
    <p> 

    <strong>When:</strong>  
    <%=Model.EventDate.Value.ToShortDateString() %>  

    <strong>@</strong> 
    <%=Model.EventDate.Value.ToShortTimeString() %> 
    </p> 
    <p> 
      
    <strong>Where:</strong>  
    <%=Html.Encode(Model.Address) %>, 
    <%=Html.Encode(Model.Country) %> 
    </p> 
    <p> 
    <strong>Description:</strong>  
    <%=Html.Encode(Model.Description) %> 
    </p>        
<%--    <p> 
    <strong>Organizer:</strong>  
    <%=Html.Encode(Model.HostedBy) %> 
    (<%=Html.Encode(Model.ContactPhone) %>) 
    </p>--%>
    <p>
        <%: Html.ActionLink("Edit", "Edit", new { id=Model.BeerEventID }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</div>

    <% Html.RenderPartial("Map"); %>

</asp:Content>
