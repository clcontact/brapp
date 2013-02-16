<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Home Page.</h1>
                <h2><%: ViewBag.Message %></h2>
            </hgroup>
            <p>
                Welcome to beerTasteic
                <br />
                Site about beer for beer people by beer people.. not that we like to drink, just the taste.
                
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            Find out all about beer in the articles section what I find or others share or comment on.
        </li>

        <li class="two">
            <h5>Cooking</h5>
            Make it even better look in our Recipes section<br />
        </li>

        <li class="three">
            <h5>Rating</h5>
            Drink it Love it, give it a rating and share with others.
        </li>
        <li class="four">
            <h5>Events</h5>
            Know a party do share we all love a good beer.
        </li>

    </ol>
</asp:Content>
