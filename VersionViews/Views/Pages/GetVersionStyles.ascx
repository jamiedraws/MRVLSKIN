<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var cacheBusterVersion = 1;
    var v = string.Format("?v={0}", cacheBusterVersion);
%>

<link rel="preload" href="/images/ocean.jpg" as="image" />

<link rel="preload" href="https://use.typekit.net/tqj7fug.css" as="style">
<link rel="stylesheet" href="https://use.typekit.net/tqj7fug.css">

<link rel="preload" href="/css/1.0000/shell.css<%= v %>" as="style">
<link rel="stylesheet" href="/css/1.0000/shell.css<%= v %>">

<% if (DtmContext.Page.IsStartPageType) { %>
    <link rel="preload" href="/css/1.0000/index-rev2.css" as="style">
    <link rel="stylesheet" href="/css/1.0000/index-rev2.css">
<% } %>

<% if (!DtmContext.Page.IsStartPageType) { %>
    <link rel="preload" href="/css/1.0000/dtm.css<%= v %>" as="style"/>
    <link rel="stylesheet" href="/css/1.0000/dtm.css<%= v %>" />
<% } %>

<script defer src="/js/1.0000/app.es5.js<%= v %>"></script>
<script defer src="/js/app.expando.js<%= v %>"></script>
<script defer src="/js/validation.js<%= v %>"></script>
<script defer src="/js/express-checkout.js<%= v %>"></script>

<% 
    var lightboxScript = SettingsManager.ContextSettings["FrameworkJS/CSS.DtmStyle.Lightbox.Script"];
    var lightboxStylesheet = SettingsManager.ContextSettings["FrameworkJS/CSS.DtmStyle.Lightbox.Stylesheet"];

    if (!string.IsNullOrEmpty(lightboxScript))
    {
        %>
        <script defer src="<%= lightboxScript %>"></script>
        <%
    }

    if (!string.IsNullOrEmpty(lightboxStylesheet))
    {
        %>
        <link rel="stylesheet" href="<%= lightboxStylesheet %>"  media="print" onload="this.media='all'; this.onload=null;"/>
        <%
    }
%>