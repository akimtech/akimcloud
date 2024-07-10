// JavaScript Document

/*
Custom.js file includes following

- CAROUSEL SLIDER
- TO TOP
- PRELOADER
- ACCORDIAN
- MAGNIFIC POPUP
*/


$(document).ready(function() {

    'use strict';
	
	/************************************************************************************ CAROUSEL SLIDER STARTS */

    var owl = $('.testimonial-carousel');
    owl.owlCarousel({

        autoplay: 400,
        autoplayHoverPause: true,
        nav: false,
        dots: true,
        mouseDrag: true,
        smartSpeed: 500,
        margin: 0,
        loop: true,
        navText: [
            "<i class='fa fa-angle-right'></i>", "<i class='fa fa-angle-left'></i>"
        ],
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    });
	
    var owl = $('.portfolio');
    owl.owlCarousel({

        autoplay: 400,
        autoplayHoverPause: true,
        nav: true,
        dots: false,
        mouseDrag: true,
        smartSpeed: 500,
        margin: 0,
        loop: true,
        singleItem: true,
        navText: [
            "<i class='fa fa-angle-right'></i>", "<i class='fa fa-angle-left'></i>"
        ],
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 4
            }
        }
    });
	
    var owl = $('.plans-content');
    owl.owlCarousel({

        autoplay: 400,
        autoplayHoverPause: true,
        nav: false,
        dots: false,
        mouseDrag: true,
        smartSpeed: 500,
        margin: 0,
        loop: true,
        singleItem: true,
		navText: [
            "<i class='fa fa-angle-right'></i>", "<i class='fa fa-angle-left'></i>"
        ],
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 4
            }
        }
    });


	var owl = $('.pics-carousel');
    owl.owlCarousel({

        autoplay: 400,
        autoplayHoverPause: true,
        nav: true,
        dots: false,
        mouseDrag: true,
        margin: 0,
        loop: true,
        singleItem: true,
        navText: [
            "<i class='fa fa-angle-right'></i>", "<i class='fa fa-angle-left'></i>"
        ],
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    });


    /************************************************************************************ CAROUSEL SLIDER ENDS */

    /************************************************************************************ TO TOP STARTS */

    $(window).on('scroll', function() {
        if ($(this).scrollTop() > 100) {
            $('#scroll-top').fadeIn();
        } else {
            $('#scroll-top').fadeOut();
        }
    });

    $('#scroll-top').on("click", function() {
        $("html, body").animate({
            scrollTop: 0
        }, 600);
        return false;
    });	


    /************************************************************************************ TO TOP ENDS */
	
	/************************************************************************************ ACCORDIAN STARTS */
	
    var acc = document.getElementsByClassName("accordion");
    var i;

    for (i = 0; i < acc.length; i++) {
        acc[i].onclick = function() {
            this.classList.toggle("active");
            this.nextElementSibling.classList.toggle("show");
        }
    }
	
	/************************************************************************************ ACCORDIAN ENDS */

    

	/************************************************************************************ MAGNIFIC POPUP STARTS */

	$('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
		/*disableOn: 700,*/
		type: 'iframe',
		mainClass: 'mfp-fade',
		removalDelay: 160,
		preloader: false,
		fixedContentPos: false
	});

	$('.image-popup-vertical-fit').magnificPopup({
		type: 'image',
		closeOnContentClick: true,
		mainClass: 'mfp-img-mobile',
		image: {
			verticalFit: true
		}

	});

	/************************************************************************************ MAGNIFIC POPUP ENDS */
	
});

/************************************************************************************ PRELOADER STARTS */

	
	$(window).on('load', function() { // makes sure the whole site is loaded 
			$('#status').fadeOut(); // will first fade out the loading animation
			$('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
            
		})
	
	
	
	
	
	
	
	
	
	
	
/************************************************************************************ PRELOADER ENDS */