<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%@ Import Namespace="MRVLSKIN.Models" %>
<%@ Import Namespace="MRVLSKIN.Navigation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%
    var sitemap = ViewData["Sitemap"] as Sitemap ?? new Sitemap(); 
%>

<main aria-labelledby="main-title" class="view hero section bg bg--image">
    <div id="main" class="view__anchor"></div>
    <picture class="bg__image">
        <img class="hero__bg" src="/images/ocean.jpg" alt="">
    </picture>
    <div class="view__in hero__in section__in">
        <div class="hero__group">
            <div class="hero__offer-price-payment">
                <header>
                    <h1 id="main-title" class="hero__title">One of the most<br>skin-transformative discoveries in a decade</h1>
                    <p class="hero__banner">BLUE SCORPION PEPTIDE<sup>&trade;</sup></p>
                </header>

                <div class="hero__offer-price sr">
                  <p>
                    Helps Repair Years of Aging
                    Restores A Healthy, Youthful Look
                    Safe and Non-Irritating
                  </p>
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
                        <source srcset="/images/product.webp" type="image/webp" />
                        <img src="/images/product.png" width="152" height="557" alt="Blue Scorpion Peptitde">
                    </picture>
                    <figure class="hero__celebrity">
                        <picture>
                            <source srcset="/images/kate.webp" type="image/webp" />
                            <img src="/images/kate.png" width="532" height="458" alt="Kate Beckinsale">
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

<section aria-label="MRVL Offers" class="view product-offer product-offer--collection-section section">
    <div id="offers" class="view__anchor"></div>
    <div class="view__in product-offer__in section__in">
        <div class="product-offer__group">
            <div class="product-offer product-offer--best-seller">
                <figure class="product-offer__figure">
                    <picture data-src-img="/images/best-seller.png">
                        <img src="/shared/images/blank.png" alt="Anti-Aging Firming Serum, HA HydraFill Cream and Retinol Repair Night Cream" width="199" height="246">
                    </picture>
                    <figcaption>
                        <div class="product-offer__standfirst">Best Seller</div>
                        <h2 class="product-offer__title">MRVL-OUS BEGINNINGS</h2>
                        <b>Now Only $279 + Free Shipping</b>
                        <b class="product-offer__savings">50% SAVINGS!</b>
                    </figcaption>
                    <div class="product-offer__burst burst burst--value burst--accent-color">
                        <div class="burst__text">
                            <span>$560</span>
                            <span>VALUE</span>
                        </div>
                    </div>
                </figure>
                <div class="product-offer__text">
                    <p>Join the MRVL&reg; family in a new revolution of anti-aging skincare and rejuvenate your skin back to a younger healthy glow.</p>
    
                    <div class="product-offer__list-heading">Collection contains:</div>
                    <ul>
                        <li>Anti-Aging Firming Serum 1.0oz</li>
                        <li>HA HydraFill Cream 1.7oz</li>
                        <li>Retinol Repair Night Cream 1.0oz</li>
                    </ul>
                </div>
            </div>
            <div class="product-offer__divider divider-line">
                <span class="burst burst--accent-color">Or</span>
            </div>
            <div class="product-offer product-offer--standard">
                <figure class="product-offer__figure">
                    <picture data-src-img="/images/serum.png">
                        <img src="/shared/images/blank.png" alt="Anti-Aging Firming Serum" width="75" height="248">
                    </picture>
                    <figcaption>
                        <h2 class="product-offer__title">Anti-Aging Firming Serum</h2>
                        <div class="product-offer__strikethrough">Retail Price: $195</div>
                        <b>Now Only $95 + Free Shipping</b>
                        <b class="product-offer__savings">50% SAVINGS!</b>
                    </figcaption>
                </figure>
                <div class="product-offer__text">
                    <p>MRVL SKIN SOLUTIONS has developed the ultimate anti-aging treatment. Blue Scorpion Peptide&trade; is paired with Ubiquinone, an antioxidant that firms, lifts, and plumps the skin to reduce the appearance of fine lines and wrinkles.</p>
                    
                    <div class="product-offer__list-heading">Offer Includes:</div>
                    <ul>
                        <li>Anti-Aging Firming Serum 1.0oz</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

    
<section aria-labelledby="luxe-life-title" class="view content content--picture-media content--primary-bg section">
    <div id="luxe-life" class="view__anchor"></div>
    <div class="view__in section__in">
        <div class="content__group">
            <header class="content__header">
                <h2 id="luxe-life-title" class="content__title">THE LUXE LIFE FOR SKIN</h2>
                <p>MRVL&reg; Skin Solutions is an innovative luxury anti-aging skincare line formulated by world renowned formulators and created by Rick Langley. This new skincare line is based on a ground-breaking ingredient in anti-aging: Blue Scorpion Peptide&trade;.</p>
                <p>This proprietary peptide has been clinically proven to help stimulate natural collagen production, fight free radicals, help repair symptoms of damaged skin and smooth the appearance of fine lines and wrinkles.</p>
            </header>
            <div class="content__figure">
                <figure class="content__picture">
                    <picture data-src-img="/images/kate-lifestyle.jpg">
                        <img src="/shared/images/blank.png" alt="" width="303" height="394" />
                    </picture>
                    <blockquote class="content__quote">&ldquo;I absolutely love what MRVL<sup>&reg;</sup> does for my skin. It&rsquo;s now a regular part of my skincare routine.&rdquo;</blockquote>
                    <figcaption class="content__figcaption">
                        <span>
                            KATE BECKINSALE <small>ACTRESS</small>
                        </span>
                    </figcaption>
                </figure>
            </div>
            <div class="content__media">
                <div class="view media-player">
					<div id="video" class="view__anchor"></div>
					<noscript>
						<style>
							.media__player {
								display: none;
							}
						</style>
					</noscript>
					<%
					var mediaPlayer = new MediaPlayer();

					if (mediaPlayer.HasSingleVideo())
					{
						var videos = mediaPlayer.VideoList;
						var firstVideo = videos.First();

						%>
					<div class="media-player__player">
						<div class="media-player__video contain contain--video" data-media-player-src-iframe="https://player.vimeo.com/video/<%= firstVideo.Id %>?dnt=1" data-aspect-ratio="630/354" data-attr='{ "width": "630", "height": "354", "allow": "fullscreen", "title": "PlasmaPro air purifier features and benefits" }'></div>
						<%

						if (mediaPlayer.HasMultipleVideos())
						{
							%>
							<nav aria-label="Video playlist" class="media-player__group">
							<%
							foreach (var video in videos)
							{
								var buttonId = video.Label.Replace(" ", "-").ToLower();
								%>
								<button id="video-button-<%= buttonId %>" class="button button--can-scale media-player__button" data-media-player-video-id="<%= video.Id %>"><%= video.Label %></button>
								<%
							}
							%>
							</nav>
							<%
						}
						%>
					</div>
					<%
					}
					%>
				</div>
            </div>
        </div>
    </div>
</section>


<section aria-label="Featured in these magazines" class="view content content--logo-gallery section">
    <div id="features" class="view__anchor"></div>
    <div class="view__in section__in">
        <header class="content__header divider-line">
            <h2 class="content__title">FEATURED IN</h2>
        </header>
        
        <div class="content__group">
            <picture data-src-img="/images/featured/people.png">
                <img src="/shared/images/blank.png" width="124" height="64" alt="People magazine"/>
            </picture>
            <picture data-src-img="/images/featured/yahoo.png">
                <img src="/shared/images/blank.png" width="124" height="64" alt="Yahoo Finance"/>
            </picture>
            <picture data-src-img="/images/featured/stylecaster.png">
                <img src="/shared/images/blank.png" width="230" height="64" alt="Stylecaster"/>
            </picture>
            <picture data-src-img="/images/featured/hello.png">
                <img src="/shared/images/blank.png" width="140" height="64" alt="Hello magazine"/>
            </picture>
            <picture data-src-img="/images/featured/e-online.png">
                <img src="/shared/images/blank.png" width="90" height="64" alt="E online"/>
            </picture>
            <picture data-src-img="/images/featured/page-six.png">
                <img src="/shared/images/blank.png" width="64" height="64" alt="Page Six"/>
            </picture>
        </div>
    </div>
</section>

<section aria-labelledby="about-blue-scorpion-peptide-title" class="view content content--picture-text-focus content--primary-bg section bg bg--image">
    <div id="about-blue-scorpion-peptide" class="view__anchor"></div>
    <picture class="bg__image" data-src-img="/images/blue-scorpion.jpg"></picture>
    <div class="view__in section__contain">
        <div class="content__card">
            <header class="content__header">
                <h2 id="about-blue-scorpion-peptide-title" class="content__title">BLUE SCORPION PEPTIDE<sup>&trade;</sup></h2>
                <p>ONE OF THE MOST SKIN-TRANSFORMATIVE DISCOVERIES IN A DECADE</p>
            </header>
            <div class="content__text">
                <p>Centuries of Caribbean Traditional Medicine Meets Decades of Scientific Research.</p>
                <p>A powerful peptide that&rsquo;s ethically extracted from Blue Scorpion venom.</p>
            </div>
        </div>
    </div>
</section>

<%
    var bspLink = sitemap.SitemapList.GetItemById("about-blue-scorpion-peptide");    
%>
<section aria-labelledby="ingredient-title" class="view section">
    <div id="ingredient" class="view__anchor"></div>
    <div class="view__in section__in">
        <header class="content content--raised-header">
            <h2 class="content__header" id="ingredient-title">OUR POWERFUL, PROPRIETARY TECHNOLOGY</h2>
        </header>

        <figure class="content content--ingredient">
            <div class="content__group">
                <picture class="content__picture" data-src-img="/images/ingredients/acid.jpg">
                    <img src="/shared/images/blank.png" alt="" width="250" height="250"/>
                </picture>
                <figcaption class="content__text">
                    <h3 class="content__title">HYALURONIC ACID</h3>
                    <p>Hydration is critical in maintaining a radiant complexion, which Hyaluronic acid can effectively deliver more than many other alternatives.  As a naturally occurring component of skin, it is very rarely irritating.</p>
                    <a href="<%= bspLink.Page %>" class="content__link">Learn More &raquo;</a>
                </figcaption>
            </div>
        </figure>

        <figure class="content content--ingredient">
            <div class="content__group">
                <picture class="content__picture" data-src-img="/images/ingredients/ribbon.jpg">
                      <img src="/shared/images/blank.png" alt="" width="250" height="250"/>
                </picture>
                <figcaption class="content__text">
                    <h3 class="content__title">HYALURONIDASE</h3>
                    <p>A &ldquo;rocket ship&rdquo; for active key ingredients which speeds up the delivery and makes it deeper and more effective in both penetration and absorption.</p>
                    <a href="<%= bspLink.Page %>" class="content__link">Learn More &raquo;</a>
                </figcaption>
            </div>
        </figure>

        <figure class="content content--ingredient">
            <div class="content__group">
                <picture class="content__picture" data-src-img="/images/ingredients/collagen.jpg">
                      <img src="/shared/images/blank.png" alt="" width="250" height="250"/>
                </picture>
                <figcaption class="content__text">
                    <h3 class="content__title">COLLAGEN STIMULATION</h3>
                    <p>Peptides include amino acids that stimulate skin rejuvenation and the production of collagen and elastin to reduce the appearance of fine lines and wrinkles.</p>
                    <a href="<%= bspLink.Page %>" class="content__link">Learn More &raquo;</a>
                </figcaption>
            </div>
        </figure>

        <figure class="content content--ingredient">
            <div class="content__group">
                <picture class="content__picture" data-src-img="/images/ingredients/antioxidant.jpg">
                    <img src="/shared/images/blank.png" alt="" width="250" height="250">
                </picture>
                <figcaption class="content__text">
                    <h3 class="content__title">ANTIOXIDANT</h3>
                    <p>Many individual compounds found in the Blue Scorpion Peptide have antioxidant properties and working together they provide greater antioxidant capacity to protect the skin.  Plus, BSP&rsquo;s high antioxidant level helps protect skin against free radical damage that causes skin aging, boosts hydration, builds skin barrier protection and helps restore skin elasticity and firmness.</p>
                    <a href="<%= bspLink.Page %>" class="content__link">Learn More &raquo;</a>
                </figcaption>
            </div>
        </figure>
    </div>
</section>

<section aria-labelledby="clinical-trials-title" class="view content content--clinical-trials content--primary-bg section">
    <div id="clinical-trials" class="view__anchor"></div>
    <div class="view__in section__in">
        <div class="content__group">
            <header class="content__header">
                <h2 id="clinical-trials-title" class="content__title">Independent Clinical Perception Studies</h2>
                <p>This is an assessment of the anti-aging improvement effect after using the MRVL SKIN SOLUTIONS products.</p>
            </header>
            <picture class="content__picture" data-src-img="/images/anti-aging-firming-serum-advert.jpg">
                <img src="/shared/images/blank.png" alt="Anti-Aging Firming Serum" width="398" height="503">
            </picture>
            <div class="content__text">
                <h3>After Only 2 Weeks!</h3>
                <div class="first-letter-text">
                    <div class="first-letter-text__group">
                        <span class="first-letter-text__first-letter">94%</span>
                        <span class="first-letter-text__text">report an improvement in skin elasticity</span>
                    </div>
                </div>
                <div class="first-letter-text">
                    <div class="first-letter-text__group">
                        <span class="first-letter-text__first-letter">97%</span>
                        <span class="first-letter-text__text">saw the appearance of fine lines and wrinkles reduced</span>
                    </div>
                </div>
                <div class="first-letter-text">
                    <div class="first-letter-text__group">
                        <span class="first-letter-text__first-letter">97%</span>
                        <span class="first-letter-text__text">agree skin feels more toned and plumper</span>
                    </div>
                </div>

                <h3>After 4 Weeks!</h3>
                <div class="first-letter-text">
                    <div class="first-letter-text__group">
                        <span class="first-letter-text__first-letter">91%</span>
                        <span class="first-letter-text__text">agree product helped repair damaged skin</span>
                    </div>
                </div>
                <div class="first-letter-text">
                    <div class="first-letter-text__group">
                        <span class="first-letter-text__first-letter">91%</span>
                        <span class="first-letter-text__text">believe skin appears to look younger</span>
                    </div>
                </div>
                <div class="first-letter-text">
                    <div class="first-letter-text__group">
                        <span class="first-letter-text__first-letter">97%</span>
                        <span class="first-letter-text__text">describe their complexion as moisture-balanced and glowing</span>
                    </div>
                </div>
            </div>
            <footer class="content__footer">
                <a href="#order" class="button button--order-alternate">Click Here To Order Now</a>
            </footer>
        </div>
    </div>
</section>

<%
    var founderLink = sitemap.SitemapList.SetPage(new NavigationItem
    {
        Page = "Our-Founder"
    });
%>
<section aria-labelledby="about-mrvl-title" class="view content content--text-photo-card section">
    <div id="about-mrvl" class="view__anchor"></div>
    <div class="view__in section__in">
        <div class="content__group content__card">
            <div class="content__text section__frame">
                <h2 id="about-mrvl-title" class="content__title">ABOUT THE FOUNDER RICK LANGLEY</h2>
                <p>Rick Langley is an entrepreneur and philanthropist, also known as <a href="https://www.instagram.com/scorpion.rick/" rel="noopener" target="_blank" class="link">@Scorpion.Rick<span class="link__advisal"> <span class="link__container">Opens in a new window</span></span></a>. Founder of the world&rsquo;s largest Blue Scorpion farm and state of the art lab, he went on to create the MRVL<sup>&reg;</sup> GROUP, which uses a ground-breaking proprietary ingredient, Blue Scorpion Peptide, in all its products. Rick adopted a business philosophy of social responsibility & is the founder of <a href="https://todayspromises.org/" target="_blank" rel="noopener" class="link">Today&rsquo;s Promises<sup>&trade;</sup><span class="link__advisal"> <span class="link__container">Opens in a new window</span></span></a>, a non-profit charity that aids impoverished children in the Caribbean.</p>
                <a href="<%= founderLink.Page %>" class="content__link">Learn More &raquo;</a>
            </div>
            <picture class="content__photo" data-src-img="/images/rick-langley.jpg">
                <img src="/shared/images/blank.png" alt="Rick Langley on the beach with his dog" width="420" height="535">
            </picture>
        </div>
    </div>
</section>

<section class="testimonials view section" aria-labelledby="customer-reviews-title">
    <div class="view__anchor" id="customer-reviews"></div>
    <div class="view__in section__in">
        <div class="section__block testimonials__header">
            <h2 class="testimonials__title title" id="customer-reviews-title">MRVL&reg; FIVE STAR REVIEWS</h2>
        </div>
        <div class="section__block testimonials__main">
            <div class="slide slide--carousel slide--testimonials slide--no-scrollbar" tabindex="0">
                <div id="testimonials" class="slide__into">
        
                    <div class="slide__item">
                        <figure class="testimonials__figure">
                                <blockquote>"I have been using the MRVL&reg; beauty creams for approximately 3 months. I am completely blown away by the results I have seen from the products. My wrinkles are less visible and my face is much firmer. I highly recommend MRVL."</blockquote>
                                <figcaption>- DENISE W, 56, ORLANDO, FLORIDA</figcaption>
                                <svg class="testimonials__stars" aria-label="5 stars">
                                    <use href="#stars"></use>
                                </svg>
                        </figure>
                    </div>
        
                    <div class="slide__item">
                        <figure class="testimonials__figure">
                                <blockquote>"Why am I only discovering this now? The anti-aging serum has made my skin silky-smooth and has evened-out my skin tone.  Everyone is asking me if I have changed my make-up foundation. What they don't know is that I'm not even wearing any thanks to MRVL&reg; Skincare!"</blockquote>
                                <figcaption>- ELAINE, 43, OAKVILLE, ONTARIO</figcaption>
                                <svg class="testimonials__stars" aria-label="5 stars">
                                    <use href="#stars"></use>
                                </svg>
                        </figure>
                    </div>
        
                     <div class="slide__item">
                        <figure class="testimonials__figure">
                            <blockquote>"MRVL&reg;, could you make a ton of this stuff so I can just soak in a whole tub of it?! I need it for my entire body so it will look as good as my face does now. ;-) Thanks for a great product!"</blockquote>
                            <figcaption>- MARIAN, 61, VIERA, FLORIDA</figcaption>
                            <svg class="testimonials__stars" aria-label="5 stars">
                                <use href="#stars"></use>
                            </svg>
                        </figure>
                    </div>
                </div>
                <div class="slide__js">
                    <nav class="slide__nav">
                        <button
                            aria-label="Select the previous slide"
                            class="slide__prev"
                            type="button"
                        >
                            <svg>
                                <use href="#icon-chevron"></use>
                            </svg>
                        </button>
                        <button
                            aria-label="Select the next slide"
                            class="slide__next"
                            type="button"
                        >
                            <svg>
                                <use href="#icon-chevron"></use>
                            </svg>
                        </button>
                    </nav>
                </div>
            </div>
            <a href="#order" class="button button--order">CLICK HERE TO ORDER NOW</a>
        </div>
    </div>
</section>

<section aria-labelledby="money-back-guarantee-title" class="view content content--seal-text content--primary-bg section">
    <div id="money-back-guarantee" class="view__anchor"></div>
    <div class="view__in section__in">
        <div class="content__group">
            <picture class="content__seal" data-src-img="/images/30-day-mbg.svg">
                <img src="/shared/images/blank.png" alt="30-day money back guarantee" width="182" height="182">
            </picture>
            <div class="content__text">
                <h2 class="content__title" id="money-back-guarantee-title">TRY IT RISK FREE WITH 30-DAY MONEY-BACK GUARANTEE!</h2>
                <p>We are so confident you&rsquo;ll love MRVL<sup>&reg;</sup> products that we offer a 30-day money-back guarantee. Simply return the unused portion of the product for a full refund of your purchase price, less shipping and handling.</p>
            </div>
        </div>
    </div>
</section>

</asp:Content>