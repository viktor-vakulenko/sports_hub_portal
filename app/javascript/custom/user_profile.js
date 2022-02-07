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

    function duplicate_main_articles(){
        $("#repeater").createRepeater({
            showFirstItemToDefault: true,
        });
    }
    function get_subcategories(){
        $('.load-subcategory').change('ajax:success', function() {
            let current_category_id = $( ".load-subcategory option:selected" ).val()
            $.ajax({
                url: '/admin/categories/' + current_category_id + '/sub_categories' ,
                dataType:'json',
                type: 'GET',
                data: {parent_id: current_category_id },
                success: function (data) {
                    let subcategory = [];
                    $.each(data, function(index, arr_el) {
                        subcategory.push(
                            '<option value="'+arr_el.id+'">'+ arr_el.title +'</option>'
                        )
                    });
                    $('#subcategories-select')
                        .find('option')
                        .remove()
                        .end()
                        .append(subcategory)
                    ;
                }
            });
        });
    }
    get_subcategories();

});
