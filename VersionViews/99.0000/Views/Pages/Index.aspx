<%@ Page Language="C#" MasterPageFile="~/VersionViews/99.0000/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<main aria-labelledby="main-title" class="view hero section bg bg--image">
    <div id="main" class="view__anchor"></div>
    <picture class="bg__image">
        <img class="hero__bg" src="/images/ocean.jpg" alt="">
    </picture>
    <div class="view__in hero__in section__in">
        <div class="hero__group">
            <div class="hero__offer-price-payment">
                <header>
                    <h1 id="main-title" class="hero__title">The most skin-transformative discovery in a decade</h1>
                    <p class="hero__banner">BLUE SCORPION PEPTIDE<sup>&trade;</sup></p>
                </header>

                <div class="hero__offer-price sr">
                    <div class="sr__text">Now Only $95 Plus Free Shipping</div>
                      <div class="offer" aria-hidden="true" role="presentation">
                        <div class="offer__standfirst">Now Only</div>
                        <div class="offer offer__price">
                            <span class="offer__currency">$</span>
                            <span class="offer__amt">95</span>
                        </div>
                        <div class="offer__standfirst">Free Shipping!</div>
                      </div>
                </div>

                <div class="hero__order-payment">
                    <a href="#order" class="button button--order">Order Now</a>
                    <div class="hero__payment">
                        <%= Html.Partial("GetPaymentIcons") %>
                    </div>
                </div>
            </div>
            <div class="hero__product-celebrity">
                <div class="hero__group">
                    <picture class="hero__product">
                        <img src="/images/product.png" alt="Blue Scorpion Peptitde">
                    </picture>
                    <figure class="hero__celebrity">
                        <picture>
                            <img src="/images/kate.png" alt="Kate Beckinsale">
                        </picture>
                        <figcaption>Kate Beckinsale <small>Actress</small></figcaption>
                    </figure>
                    <picture class="hero__scorpion">
                        <img src="/images/scorpion.svg" alt="">
                    </picture>
                </div>
            </div>
        </div>
    </div>
</main>

</asp:Content>


