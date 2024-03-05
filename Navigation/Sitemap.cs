using MRVLSKIN.Models;

namespace MRVLSKIN.Navigation
{
    public class Sitemap
    {
        public NavigationList SitemapList;
        public Sitemap()
        {
            SitemapList = new NavigationList();

            // Home
            SitemapList.AddItem(new NavigationItem
            {
                Id = "accessibility-statement",
                Name = "Accessibility Statement",
                Page = "Accessibility-Statement",
                Hash = "#main"
            });

            // Home
            SitemapList.AddItem(new NavigationItem
            {
                Id = "home",
                Name = "Home",
                Page = "Index",
                Hash = "#main"
            });

            // About Blue Scorpion Peptide
            SitemapList.AddItem(new NavigationItem
            {
                Id = "about-blue-scorpion-peptide",
                Name = "About BSP™",
                Page = "BSP",
                Hash = "#main"
            });

            // Our Founder
            SitemapList.AddItem(new NavigationItem
            {
                Id = "our-founder",
                Name = "Our Founder",
                Page = "Our-Founder",
                Hash = "#main"
            });

            // About MRVL
            SitemapList.AddItem(new NavigationItem
            {
                Id = "about-mrvl",
                Name = "ABOUT MRVL®",
                Page = "MRVL",
                Hash = "#main"
            });

            // FAQ
            SitemapList.AddItem(new NavigationItem
            {
                Id = "faq",
                Name = "FAQs",
                Page = "FAQ",
                Hash = "#main"
            });

            // Customer Reviews
            SitemapList.AddItem(new NavigationItem
            {
                Id = "customer-reviews",
                Name = "Five Star Reviews",
                Page = "Testimonials",
                Hash = "#main"
            });

            // Clinical Studies
            SitemapList.AddItem(new NavigationItem
            {
                Id = "clinical-studies",
                Name = "Clinical Studies",
                Page = "Index",
                Hash = "#clinical-trials",
                ApplyHash = true
            });

            // Customer Service
            SitemapList.AddItem(new NavigationItem
            {
                Id = "customer-service",
                Name = "Customer Service",
                Page = "CustomerService",
                Hash = "#main"
            });

            // Shipping Policy
            SitemapList.AddItem(new NavigationItem
            {
                Id = "shipping-policy",
                Name = "Shipping Policy",
                Page = "ShippingPolicy",
                Hash = "#main"
            });

            // Return Policy
            SitemapList.AddItem(new NavigationItem
            {
                Id = "return-policy",
                Name = "Return Policy",
                Page = "ReturnPolicy",
                Hash = "#main"
            });

            // Privacy Policy
            SitemapList.AddItem(new NavigationItem
            {
                Id = "privacy-policy",
                Name = "Privacy Policy",
                Page = "PrivacyPolicy",
                Hash = "#main"
            });

            // Security Policy
            SitemapList.AddItem(new NavigationItem
            {
                Id = "security-policy",
                Name = "Security Policy",
                Page = "SecurityPolicy",
                Hash = "#main"
            });

            // Terms and Conditions
            SitemapList.AddItem(new NavigationItem
            {
                Id = "terms-and-conditions",
                Name = "Terms",
                Page = "Terms-Conditions",
                Hash = "#main"
            });

            // Terms of Service
            SitemapList.AddItem(new NavigationItem
            {
                Id = "terms-of-service",
                Name = "Terms of Service",
                Page = "Terms-Of-Service",
                Hash = "#main"
            });

            // Site Map
            SitemapList.AddItem(new NavigationItem
            {
                Id = "sitemap",
                Name = "Site Map",
                Page = "SiteMap",
                Hash = "#main"
            });

            // Order Now
            SitemapList.AddItem(new NavigationItem
            {
                Id = "order",
                Name = "Order Now",
                Hash = "#order"
            });
        }
    }
}