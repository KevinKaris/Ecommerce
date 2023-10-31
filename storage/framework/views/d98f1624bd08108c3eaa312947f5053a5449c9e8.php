
<?php $__env->startSection('title'); ?>
    <?php echo e(__('common.category')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<!-- brand_banner::start  -->
<div class="brand_banner d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h3 class="branding_text"><?php echo e(__('common.category')); ?></h3>
            </div>
        </div>
    </div>
</div>
<!-- brand_banner::end  -->
<!-- prodcuts_area ::start  -->
<div class="prodcuts_area ">
    <div class="container">
        <div class="row">
            <?php echo $__env->make('frontend.amazy.partials._category_sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            <div id="dataWithPaginate" class="col-lg-8 col-xl-9">
                <?php echo $__env->make('frontend.amazy.partials.category_paginate_data', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>
    </div>

    <div class="add-product-to-cart-using-modal">

    </div>
    <input type="hidden" id="login_check" value="<?php if(auth()->check()): ?> 1 <?php else: ?> 0 <?php endif; ?>">

</div>
<?php $__env->stopSection(); ?>
<?php $__env->startPush('scripts'); ?>
    <script type="text/javascript">

        (function($){
            "use strict";

            var filterType = [];

            $(document).ready(function(){

                '<?php if(isset($color) && $color->id == 1): ?>'+
                '<?php $__currentLoopData = $color->values; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ki => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>'+
                    $(".colors_<?php echo e($ki); ?>").css("background-color", "<?php echo e($item->value); ?>");
                '<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>'+
                '<?php endif; ?>'

                $(document).on('click', '#refresh_btn', function(event){
                    event.preventDefault();
                    filterType = [];
                    fetch_data(1);

                    $('.attr_checkbox').prop('checked', false);
                    $('.color_checkbox').removeClass('selected_btn');
                    $('.category_checkbox').prop('checked', false);
                    $('.brandDiv').html('');
                    $('.colorDiv').html('');
                    $('.attributeDiv').html('');
                    $('.sub-menu').find('ul').css('display', 'none');
                    $('.plus_btn_div').removeClass('ti-minus');
                    $('.plus_btn_div').addClass('ti-plus');

                    $('#price_range_div').html(
                        `<div class="wrapper">
                        <div class="range-slider">
                            <input type="text" class="js-range-slider-0" value=""/>
                        </div>
                        <div class="extra-controls form-inline">
                            <div class="form-group">
                                <div class="price_rangs">
                                    <input type="text" class="js-input-from form-control" id="min_price" value="<?php echo e($min_price_lowest); ?>" readonly/>
                                    <p>Min</p>
                                </div>
                                <div class="price_rangs">
                                    <input type="text" class="js-input-to form-control" id="max_price" value="<?php echo e($max_price_highest); ?>" readonly/>
                                    <p>Max</p>
                                </div>
                            </div>
                        </div>
                    </div>`
                    );

                    var minVal = parseInt($('#min_price').val());
                    var maxVal = parseInt($('#max_price').val());
                    $("#slider-range").slider({
                        range: true,
                        min: minVal,
                        max: maxVal,
                        values: [minVal, maxVal],
                        slide: function (event, ui) {
                            $("#amount").val(numbertrans(ui.values[0])+" - "+numbertrans(ui.values[1]));
                            $("#amount").data('value',ui.values[0]+"-"+ui.values[1]);
                        },
                    });
                    $("#amount").val(
                        numbertrans(minVal)+" - "+numbertrans(maxVal)
                    );
                    $("#amount").data('value',
                        $("#slider-range").slider("values", 0)+"-"+$("#slider-range").slider("values", 1)
                    );

                });



                $(document).on('click', '.getProductByChoice', function(event){
                    let type = $(this).data('id');
                    let el = $(this).data('value');
                    getProductByChoice(type, el);
                });

                $(document).on('change', '.getFilterUpdateByIndex', function(event){
                    var paginate = $('#paginate_by').val();
                    var prev_stat = $('.filterCatCol').val();
                    var sort_by = $('#product_short_list').val();
                    var seller_id = $('#seller_id').val();
                    $('#pre-loader').show();
                    if (prev_stat == 0) {
                        var url = '<?php echo e(route('frontend.category.fetch-data')); ?>';
                    }else {
                        var url = '<?php echo e(route('frontend.category_page_product_filter_page')); ?>';
                    }
                    $.get(url, {sort_by:sort_by, paginate:paginate}, function(data){
                        $('#dataWithPaginate').html(data);
                        $('#product_short_list').niceSelect();
                        $('#paginate_by').niceSelect();
                        $('#pre-loader').hide();
                        $('.filterCatCol').val(prev_stat);
                        activeTab();
                        initLazyload();
                    });
                });



                $(document).on('click', '.page_link', function(event){
                    event.preventDefault();
                    let page = $(this).attr('href').split('page=')[1];

                    var filterStatus = $('.filterCatCol').val();
                    if (filterStatus == 0) {
                        fetch_data(page);
                    }
                    else {
                        fetch_filter_data(page);
                    }

                });

                $(document).on('click', '.page-item-category-two', function(event){
                    event.preventDefault();
                    let page = $(this).attr('href').split('page=')[1];

                    var filterStatus = $('.filterCatCol').val();
                    if (filterStatus == 0) {
                        fetch_data(page);
                    }
                    else {
                        fetch_filter_data(page);
                    }

                });

                function fetch_data(page){
                    $('#pre-loader').show();
                    var paginate = $('#paginate_by').val();
                    var sort_by = $('#product_short_list').val();
                    if (sort_by != null && paginate != null) {
                        var url = "<?php echo e(route('frontend.category.fetch-data')); ?>"+'?sort_by='+sort_by+'&paginate='+paginate+'&page='+page;
                    }else if (sort_by == null && paginate != null) {
                        var url ="<?php echo e(route('frontend.category.fetch-data')); ?>"+'?paginate='+paginate+'&page='+page;
                    }else {
                        var url = "<?php echo e(route('frontend.category.fetch-data')); ?>" + '?page=' + page;
                    }
                    if(page != 'undefined'){
                        $.ajax({
                            url: url,
                            success:function(data)
                            {
                                $('#dataWithPaginate').html(data);
                                $('#product_short_list').niceSelect();
                                $('#paginate_by').niceSelect();
                                $('#pre-loader').hide();
                                activeTab();
                                initLazyload();
                            }
                        });
                    }else{
                         toastr.warning("<?php echo e(__('defaultTheme.maximum_quantity_limit_exceed')); ?>","<?php echo e(__('common.warning')); ?>");
                    }

                }
                function fetch_filter_data(page){
                    $('#pre-loader').show();
                    var paginate = $('#paginate_by').val();
                    var sort_by = $('#product_short_list').val();
                    var seller_id = $('#seller_id').val();
                    if (sort_by != null && paginate != null) {
                        var url = "<?php echo e(route('frontend.category_page_product_filter_page')); ?>"+'?sort_by='+sort_by+'&paginate='+paginate+'&page='+page;
                    }else if (sort_by == null && paginate != null) {
                        var url = "<?php echo e(route('frontend.category_page_product_filter_page')); ?>"+'?paginate='+paginate+'&page='+page;
                    }else {
                        var url = "<?php echo e(route('frontend.category_page_product_filter_page')); ?>"+'?page='+page;
                    }
                    if(page != 'undefined'){
                        $.ajax({
                            url: url,
                            success:function(data)
                            {
                                $('#dataWithPaginate').html(data);
                                $('#product_short_list').niceSelect();
                                $('#paginate_by').niceSelect();
                                $('.filterCatCol').val(1);
                                $('#pre-loader').hide();
                                activeTab();
                                initLazyload();
                            }
                        });
                    }else{
                         toastr.warning("<?php echo e(__('defaultTheme.this_is_undefined')); ?>","<?php echo e(__('common.warning')); ?>");
                    }

                }

                let minimum_price = 0;
                let maximum_price = 0;
                let price_range_gloval = 0;
                $(document).on('click', '.js-range-slider-0', function(event){
                    var price_range = $("#amount").data('value').split('-');
                    minimum_price = price_range[0];
                    maximum_price = price_range[1];
                    price_range_gloval = price_range;
                    myEfficientFn();
                });
                var myEfficientFn = debounce(function() {
                    $('#min_price').val(minimum_price);
                    $('#max_price').val(maximum_price);
                    getProductByChoice("price_range",price_range_gloval);
                }, 500);
                function debounce(func, wait, immediate) {
                    var timeout;
                    return function() {
                        var context = this, args = arguments;
                        var later = function() {
                            timeout = null;
                            if (!immediate) func.apply(context, args);
                        };
                        var callNow = immediate && !timeout;
                        clearTimeout(timeout);
                        timeout = setTimeout(later, wait);
                        if (callNow) func.apply(context, args);
                    };
                };
                // $(".js-range-slider-0").ionRangeSlider({
                //     type: "double",
                //     min: $('#min_price').val(),
                //     max: $('#max_price').val(),
                //     from: $('#min_price').val(),
                //     to: $('#max_price').val(),
                //     drag_interval: true,
                //     min_interval: null,
                //     max_interval: null
                // });


                    $(function () {
                        var minVal = parseInt($('#min_price').val());
                        var maxVal = parseInt($('#max_price').val());
                        $("#slider-range").slider({
                            range: true,
                            min: minVal,
                            max: maxVal,
                            values: [minVal, maxVal],
                            slide: function (event, ui) {
                                $("#amount").val(numbertrans(ui.values[0])+" - "+numbertrans(ui.values[1]));
                                $("#amount").data('value',ui.values[0]+"-"+ui.values[1]);
                            },
                        });
                        $("#amount").val(
                            numbertrans(minVal)+" - "+numbertrans(maxVal)
                        );
                        $("#amount").data('value',
                            $("#slider-range").slider("values", 0)+"-"+$("#slider-range").slider("values", 1)
                        );
                    });

                function getProductByChoice(type,el)
                {
                    var objNew = {filterTypeId:type, filterTypeValue:[el]};

                    var objExistIndex = filterType.findIndex((objData) => objData.filterTypeId === type );
                    if (type == "cat") {
                        $.post('<?php echo e(route('frontend.get_brands_by_type')); ?>', {_token:'<?php echo e(csrf_token()); ?>', id:el, type:type}, function(data){
                            $('.brandDiv').html(data);
                        });
                    }
                    if (type == "cat" || type =="brand") {
                        $.post('<?php echo e(route('frontend.get_colors_by_type')); ?>', {_token:'<?php echo e(csrf_token()); ?>', id:el, type:type}, function(data){
                            $('.colorDiv').html(data);
                        });
                        $.post('<?php echo e(route('frontend.get_attribute_by_type')); ?>', {_token:'<?php echo e(csrf_token()); ?>', id:el, type:type}, function(data){
                            $('.attributeDiv').html(data);
                        });
                    }
                    if (objExistIndex < 0) {
                        filterType.push(objNew);
                    }else {
                        var objExist = filterType[objExistIndex];
                        if (objExist && objExist.filterTypeId == "price_range") {
                            objExist.filterTypeValue.pop(el);
                        }
                        if (objExist && objExist.filterTypeId == "rating") {
                            objExist.filterTypeValue.pop(el);
                        }
                        if (objExist.filterTypeValue.includes(el)) {
                            objExist.filterTypeValue.pop(el);
                        }else {
                            objExist.filterTypeValue.push(el);
                        }
                    }
                    $('#pre-loader').show();
                    $.post('<?php echo e(route('frontend.category_page_product_filter')); ?>', {_token:'<?php echo e(csrf_token()); ?>', filterType:filterType}, function(data){
                        $('#dataWithPaginate').html(data);
                        $('#product_short_list').niceSelect();
                        $('#paginate_by').niceSelect();
                        $('.filterCatCol').val(1);
                        $('#pre-loader').hide();
                        activeTab();
                        initLazyload();
                    });
                }

                function activeTab(){
                    var active_tab = localStorage.getItem('view_product_tab');
                    if(active_tab != null && active_tab == 'profile'){
                        $("#profile").addClass("active");
                        $("#profile").addClass("show");
                        $("#home").removeClass('active');
                        $("#home-tab").removeClass("active");
                    }else{
                        $("#home").addClass("active");
                        $("#home").addClass("show");
                        $("#profile").removeClass('active');
                        $("#profile-tab").removeClass("active");
                    }
                }
                activeTab();

                $(document).on('click', ".view-product", function () {
                    var target = $(this).attr("href");
                    if(target == '#profile'){
                        localStorage.setItem('view_product_tab', 'profile');
                        $(this).addClass("active");
                        $("#profile").addClass("active");
                        $("#profile").addClass("show");
                        $("#home").removeClass('active');
                        $("#home-tab").removeClass("active");
                    }else{
                        localStorage.setItem('view_product_tab', 'home');
                        $("#home").addClass("active");
                        $("#home").addClass("show");
                        $("#profile").removeClass('active');
                        $("#profile-tab").removeClass("active");
                    }
                });

            });
        })(jQuery);

    </script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make(theme('partials.add_to_cart_script'), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make(theme('partials.add_to_compare_script'), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php echo $__env->make('frontend.amazy.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/pages/category.blade.php ENDPATH**/ ?>