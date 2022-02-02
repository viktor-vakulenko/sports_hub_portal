jQuery(() => {

    $('li').hover(function () {
        $('#blur').addClass('blur');
    }, function () {
        // on mouseout, reset the background colour
        $('#blur').removeClass('blur')
    });

    $(".on-hover-shadow").hover(
        function () {
            $(this).addClass("shadow");
        },
        function () {
            $(this).removeClass("shadow");
        }
    );
});
