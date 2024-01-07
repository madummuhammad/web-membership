
$('.owl-carousel').owlCarousel({
    loop: true,
    margin: 10,
    nav: false, // Menonaktifkan navigasi
    dots: true, // Menambahkan dot
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
})

$(document).ready(function () {
    // Hide all fixed-navbar initially
    $('.fixed-navbar').hide();

    $('.nav-link-container').hover(
        function () {
            // Hover in
            var fixedNavbarId = $(this).find('.nav-link').data('fixed-navbar-id');
            $('#' + fixedNavbarId).stop(true, true).slideDown();
            $(this).addClass('active')
        },
        function () {
            // Hover out
            $(this).removeClass('active')
            var fixedNavbarId = $(this).find('.nav-link').data('fixed-navbar-id');
            $('#' + fixedNavbarId).stop(true, true).slideUp();
        }
    );

    $('.fixed-navbar').hover(
        function () {
            $(this).addClass('active')
            $(this).stop(true, true).show();
        },
        function () {
            $(this).removeClass('active')
            $('.nav-link-container.active').removeClass('active')
            $(this).stop(true, true).slideUp();
        }
    );

    $("#arrow").on('click', function () {
        $('.fixed-navbar').slideUp();
    })
});