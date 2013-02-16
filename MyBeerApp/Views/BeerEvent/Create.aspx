<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyBeerApp.Models.BeerEventFormViewModel>" %>

<asp:Content ID="Title" ContentPlaceHolderID="TitleContent" runat="server">
    Know a Beer Event
</asp:Content>

<asp:Content ID="Create" ContentPlaceHolderID="MainContent" runat="server">
<h2>Tell us where the Next Event is</h2>

<% Html.RenderPartial("BeerEventForm"); %>
</asp:Content>
