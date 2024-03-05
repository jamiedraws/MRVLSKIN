<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var isFrontPage = DtmContext.Page.IsStartPageType;
    var isShoppingCartPage = string.Equals("shoppingcart", DtmContext.PageCode, StringComparison.InvariantCultureIgnoreCase);
    var productName = SettingsManager.ContextSettings["Label.ProductName"];
%>

<footer aria-labelledby="footer-title" class="view footer section bg bg--dark @print-only-hide">
    <div id="footer" class="view__anchor"></div>
    <div class="view__in section__frame">
        <div class="section__block">
            <a href="#" aria-label="<%= productName %>" class="footer__logo logo-text">
                <svg class="logo-text__logo">
                    <use href="#logo"></use>
                </svg>
            </a>
        </div>

        <% 
            if (isFrontPage)
            {
                Html.RenderPartial("SitemapList");
            }
            else
            {
                var commonFooter = Html.GetSnippet("COMMON-FOOTER");

                commonFooter = commonFooter.Replace("{{Year}}", DateTime.Now.ToString("yyyy"));

                Response.Write(commonFooter);
            }
        %>
    </div>
    <svg class="svg-symbols">
		<symbol id="stars" x="0px" y="0px" viewBox="0 0 137 26">
			<style type="text/css">
				#stars polygon {fill:#E49F73;}
			</style>
			<polygon points="26.8,10.4 16.8,10.2 13.5,0.8 10.2,10.2 0.3,10.4 8.2,16.5 5.3,26 13.5,20.4 21.7,26 18.9,16.5"/>
			<polygon points="54.2,10.4 44.3,10.2 41,0.8 37.7,10.2 27.8,10.4 35.6,16.5 32.8,26 41,20.4 49.2,26 46.3,16.5"/>
			<polygon points="81.7,10.4 71.8,10.2 68.5,0.8 65.2,10.2 55.2,10.4 63.1,16.5 60.3,26 68.5,20.4 76.7,26 73.8,16.5"/>
			<polygon points="109.2,10.4 99.3,10.2 96,0.8 92.7,10.2 82.7,10.4 90.6,16.5 87.8,26 96,20.4 104.2,26 101.3,16.5"/>
			<polygon points="136.7,10.4 126.8,10.2 123.5,0.8 120.1,10.2 110.2,10.4 118.1,16.5 115.3,26 123.5,20.4 131.6,26 
				128.8,16.5"/>
	    </symbol>
    </svg>
</footer>

<%-- // @JS-FOOTER --%>
<% if ( DtmContext.Page.IsStartPageType ) { %>

		<% Html.RenderPartial("Scripts"); %>
		<% Html.RenderSnippet("ORDERFORMSCRIPT"); %>
        <script>
            const setBraintreeHostedFieldsStyles = function () {
                return {
                    'font-size': '1.2em',
                    'font-family': 'Helvetica, Arial, sans-serif',
                    'font-weight': 'normal',
                    'line-height': 'normal',
                    'color': '#333',
                };
            };
</script>
<% } %>

<%= Model.FrameworkVersion %>

<div class="l-controls" aria-hidden="true" role="none">
	<% Html.RenderSiteControls(SiteControlLocation.ContentTop); %>
	<% Html.RenderSiteControls(SiteControlLocation.ContentBottom); %>
	<% Html.RenderSiteControls(SiteControlLocation.PageBottom); %>
</div>