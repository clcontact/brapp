<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyBeerApp.Models.BeerEventFormViewModel>" %>

<asp:Content ID="Title" ContentPlaceHolderID="TitleContent" runat="server">
    Edit: <%=Html.Encode(Model.BeerEvent.Title)%> 
</asp:Content>
<asp:Content ID="Edit" ContentPlaceHolderID="MainContent" runat="server">
<h2>Edit Event</h2>
<% Html.RenderPartial("BeerEventForm"); %>
</asp:Content>
