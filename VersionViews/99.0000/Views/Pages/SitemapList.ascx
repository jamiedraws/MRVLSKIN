<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%@ Import Namespace="MRVLSKIN.Navigation" %>

<%
    var productName = SettingsManager.ContextSettings["Label.ProductName"];
    var ext = DtmContext.ApplicationExtension;

    var renderSitemap = false;
    var renderSitemapValue = ViewData["renderSitemap"] as string ?? "True";
    Boolean.TryParse(renderSitemapValue, out renderSitemap);
    var labelCategory = ViewData["labelCategory"] as string ?? "Footer";
    var labelId = labelCategory.Replace(" ", "-").ToLower();
    var listClasses = "list";
    if (!renderSitemap) {
        listClasses = "list list--stack";
    }
%>

<div class="section__block">
    <nav aria-label="<%= String.Format("{0} {1}", labelCategory, "Offer information") %>" class="<%= listClasses %>">
        <%
            var sitemap = ViewData["Sitemap"] as Sitemap ?? new Sitemap();
            var entries = sitemap.SitemapList.GetItemsByIdRange(new List<string> { "home", "customer-service", "return-policy", "privacy-policy", "security-policy", "sitemap" });

            if (!renderSitemap)
            {
                entries = entries.Where(e => e.Id != "sitemap" && e.Id != "order").ToList();
            }

            foreach (var entry in entries)
            {
                %>
                <a id="<%= labelId %>-<%= entry.Id %>" href="<%= entry.Page %>"><%= entry.Name %></a>
                <%
            }
        %>
    </nav>
</div>

<% if (renderSitemap) { %>
<address class="section__block">
    <%
        var commonFooter = Html.GetSnippet("COMMON-FOOTER");

        commonFooter = commonFooter.Replace("{{Year}}", DateTime.Now.ToString("yyyy"));

        Response.Write(commonFooter);    
    %>
</address>
<% } %>