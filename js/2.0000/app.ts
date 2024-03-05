// components
import Nav from "Shared/ts/components/nav";
import ToolTip from "shared/ts/components/tooltip";
import Carousel from "Shared/ts/components/carousel";
import MediaPlayer from "Shared/ts/components/media-player";
import Accordion from "Shared/ts/components/accordion";

// observers
import { observer } from "shared/ts/observers/intersection";

// utils
import LoadItem from "Shared/ts/utils/load-item";
import { elementExists } from "shared/ts/utils/html";

// adapters
import SlideCarouselAdapter from "Shared/ts/api/carousel/slide/adapters/slide-carousel";
import VimeoMediaPlayerAdapter from "Shared/ts/api/media-player/vimeo-media-player";

new ToolTip(document.querySelectorAll(".link"), "link--is-active");

const nav = new Nav("nav");

observer(".header", {
    inRange: (record) => {
        nav.root.classList.remove("nav--is-fixed");
    },
    outRange: (record) => {
        nav.root.classList.add("nav--is-fixed");
    },
    unObserve: false
});

observer(".slide--carousel", {
    inRange: (record) => {
        const carousel = new Carousel(new SlideCarouselAdapter(record));

        carousel.enablePrevNextControls();
    }
});

observer(".slide--fade", {
    inRange: (record) => {
        const carousel = new Carousel(new SlideCarouselAdapter(record));

        // give the before after carousel a 5 second interval between slides
        var config = {
            delay: 5000
        }

        carousel.setAttributes(config);
        carousel.autoplay();
    }
});

observer("[data-viewport]", {
    inRange: (record) => {
        nav.root.classList.add("nav--is-hidden");
    },
    outRange: (record) => {
        nav.root.classList.remove("nav--is-hidden");
    },
    unObserve: false,
    options: {
        threshold: 0.25
    }
});

observer("[data-src-img]", {
    inRange: (record) => new LoadItem(record)
});

observer("[data-src-iframe]", {
    inRange: (record) =>
        new LoadItem(record, { tag: "iframe", src: "data-src-iframe" })
});

observer("[data-media-player-src-iframe]", {
    inRange: (record) => {
        new LoadItem(record, {
            tag: "iframe",
            src: "data-media-player-src-iframe"
        }).load(() => {
            new MediaPlayer(
                new VimeoMediaPlayerAdapter(
                    document.querySelector(".media-player")
                )
            );
        });
    }
});

const accordion = document.querySelector(".accordion");

if (elementExists(accordion)) {
    new Accordion(accordion);
}
