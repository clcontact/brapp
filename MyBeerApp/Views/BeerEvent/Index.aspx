<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MyBeerApp.Models.BeerEvent>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Upcoming Events</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<ul>

<% foreach (var beerEvent in Model) { %>
    <li>
        <%= Html.ActionLink(beerEvent.Title, "Details", new {id = beerEvent.BeerEventID}) %>
        on
        <%=Html.Encode(beerEvent.EventDate.Value.ToShortDateString()) %>
        @
        <%=Html.Encode(beerEvent.EventDate.Value.ToShortTimeString()) %>
    </li>
<% } %>

</ul>

</asp:Content>
