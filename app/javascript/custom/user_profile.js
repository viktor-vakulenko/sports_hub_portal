jQuery(() => {

    $('li').hover(function () {
        $('#blur').addClass('blur');
    }, function () {
        // on mouseout, reset the background colour
        $('#blur').removeClass('blur')
    });
});
