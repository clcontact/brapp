<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<MyBeerApp.Models.ArticleComment>>" %>
<%= ViewData["Id"] %>
    <table>
        <%foreach (var item in Model)
          {%>
        <tr>
            <td colspan="2"><%: Html.DisplayFor(modelItem => item.UserName) %> thinks this: </td>        
        </tr>              
        <tr>
            <td>&nbsp;</td>
            <td><%: Html.DisplayFor(modelItem => item.Notes) %></td>        
        </tr>              

          <% } %>

    </table>
    <div>
        Add your own comments HERE:
        <% 
            MyBeerApp.Models.ArticleComment ar = new MyBeerApp.Models.ArticleComment();
            ar.ArticleID = int.Parse(ViewData["Key"].ToString());
            Html.RenderPartial("ArticleCommentCreate", ar); %>
    </div>