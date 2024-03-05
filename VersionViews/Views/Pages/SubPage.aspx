<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%@ Import Namespace="System.Text.RegularExpressions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<main aria-labelledby="main-title" class="view content content--text section">
    <div id="main" class="view__anchor"></div>
    <article class="view__in section__in">
        <div class="section__block content__text">
        <% 
            var title = Model.UpsellTitle ?? string.Empty;
            var text = Model.UpsellText ?? string.Empty;
            var hasTitle = !String.IsNullOrEmpty(title);
            var hasText = !String.IsNullOrEmpty(text);

            var csPhone = SettingsManager.ContextSettings["CustomerService.PhoneNumber"];
            var csEmail = SettingsManager.ContextSettings["CustomerService.EmailAddress"];
            var csAddress = SettingsManager.ContextSettings["CustomerService.WebsiteAddress"];
            var csHours = SettingsManager.ContextSettings["CustomerService.HoursOfService"];

            var csPhoneSubscriberNumber = Regex.Match(csPhone, @"\d{4}");
            var csPhoneAdvert = csPhone.Replace(csPhoneSubscriberNumber.Value, "MRVL");

            var csPhoneHTML = string.Format(@"<a href=""tel:{0}"">{1} ({2})</a>", csPhone, csPhoneAdvert, csPhoneSubscriberNumber);
            var csEmailHTML = string.Format(@"<a href=""mailto:{0}"">{0}</a>", csEmail);

            if (hasTitle)
            {
                %>
                <h1 id="main-title" class="content__title"><%= title %></h1>
                <%
            } else
            {
                Html.RenderSnippet("SUBPAGE-TITLE-" + DtmContext.PageCode);
            }

            if (hasText)
            {
                text = text
                    .Replace("[#optout#]", DtmContext.OptOutLink)
                    .Replace("[#support#]", DtmContext.SupportEmail)
                    .Replace("[#ext#]", DtmContext.ApplicationExtension)
                    .Replace("{{CSPhoneLink}}", csPhoneHTML)
                    .Replace("{{CSEmailLink}}", csEmailHTML)
                    .Replace("{{CSHours}}", csHours)
                    .Replace("{{CSAddress}}", csAddress);

                Response.Write(text);
            } else
            {
                Html.RenderSubPageContent(DtmContext.PageCode);
            }
        %>
    </article>
</main>

</asp:Content>