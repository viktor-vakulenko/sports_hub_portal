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

    $('.load-subcategory').change('ajax:success', function() {
        console.log('test load category')
        let current_category_id = $( ".load-subcategory option:selected" ).val()
        $.ajax({
            url: '/admin/categories/' + current_category_id + '/sub_categories' ,
            dataType:'json',
            type: 'GET',
            // data: { _method: 'GET' },
            data: {parent_id: current_category_id },
            success: function (data) {
                console.log(data)
                $.each(data, function(arr_el) {

                });
                $('#subcategories-select')
                    .find('option')
                    .remove()
                    .end()
                    .append('<option value="whatever">text</option>')
                    .val('whatever')
                ;
            }
        })
    });

    // $("#repeater").createRepeater({
    //     showFirstItemToDefault: true,
    // });
});
