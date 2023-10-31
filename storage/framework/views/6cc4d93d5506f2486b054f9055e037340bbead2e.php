

<?php $__env->startSection('title'); ?>
    <?php echo e($seller->first_name); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startPush('styles'); ?>
    <style>
        .member_info_iner{
            --userProfile: 150px;
        }
        .member_info .member_info_iner {
            margin-top: -50px;
            z-index: 2;
            position: relative;
        }
        .profile_content{
            max-width: calc(100% - var(--userProfile));
            flex: 0 0 100%;
        }
        .profile_img_div {
            height: var(--userProfile);
            width: var(--userProfile);
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #f4f7f9;
            padding: 10px;
        }
        .profile_img_div img {
            max-width: 150px;
            max-height: 150px;
            width: 100%;
            height: 100%;
            object-fit: contain;
        }
        .member_info .member_info_text {
            padding-left: 30px;
            margin-top: 87px;
        }
        .member_info .member_info_text .member_info_details {
            margin-bottom: 12px;
            align-items: center;
        }
        .member_info .member_info_text .member_info_details h4 {
            font-size: 24px;
            margin-bottom: 0;
        }
        .member_info .member_info_text .member_info_details span {
            margin: 0 15px;
        }
        .member_info .member_info_text .member_info_details {
            margin-bottom: 12px;
            align-items: center;
        }
        @media  only screen and (max-width: 991px){
            .member_info .member_info_iner {
                flex-wrap: wrap;
            }

            .profile_content {
                flex: 0 0 100%;
                max-width: 100%;
            }

            .member_info .member_info_text {
                margin-top: 30px;
                padding-left: 0px;
            }

            .member_info_iner {
                --userProfile: 120px;
            }
        }
        @media  only screen and (max-width: 767px){
            .member_info_iner {
                --userProfile: 100px;
            }
            .member_info .member_info_text {
                margin-top: 20px;
            }
        }
    </style>
<?php $__env->stopPush(); ?>
<?php $__env->startSection('content'); ?>

<div class="flash_deal_banner">
    <?php if($seller->role->type == "superadmin"): ?>
        <img src="<?php echo e(app('general_setting')->shop_link_banner?showImage(app('general_setting')->shop_link_banner):showImage('frontend/default/img/breadcrumb_bg.png')); ?>" alt="<?php if(@$seller->role->type == 'seller'): ?> <?php echo e(@$seller->SellerAccount->seller_shop_display_name); ?> <?php else: ?> <?php echo e(app('general_setting')->company_name); ?> <?php endif; ?>" title="<?php if(@$seller->role->type == 'seller'): ?> <?php echo e(@$seller->SellerAccount->seller_shop_display_name); ?> <?php else: ?> <?php echo e(app('general_setting')->company_name); ?> <?php endif; ?>" class="img-fluid w-100">
    <?php else: ?>
        <img src="<?php echo e($seller->SellerAccount->banner?showImage($seller->SellerAccount->banner):showImage('frontend/default/img/breadcrumb_bg.png')); ?>" alt="<?php if(@$seller->role->type == 'seller'): ?> <?php echo e(@$seller->SellerAccount->seller_shop_display_name); ?> <?php else: ?> <?php echo e(app('general_setting')->company_name); ?> <?php endif; ?>" title="<?php if(@$seller->role->type == 'seller'): ?> <?php echo e(@$seller->SellerAccount->seller_shop_display_name); ?> <?php else: ?> <?php echo e(app('general_setting')->company_name); ?> <?php endif; ?>" class="img-fluid w-100">
    <?php endif; ?>
</div>
<div class="new_user_section section_spacing6 pt-0">
    <div class="container">
        <div class="row justify-content-center mb_60">
            <div class="col-xl-10 col-md-12 member_info">
                <div class="member_info_iner d-flex align-items-center w-100">
                    <div class="profile_img_div">
                      <?php if($seller->role->type == "superadmin"): ?>
                      <img src="<?php echo e(showImage(app('general_setting')->logo)); ?>" alt="<?php if(@$seller->role->type == 'seller'): ?> <?php echo e(@$seller->SellerAccount->seller_shop_display_name); ?> <?php else: ?> <?php echo e(app('general_setting')->company_name); ?> <?php endif; ?>" title="<?php if(@$seller->role->type == 'seller'): ?> <?php echo e(@$seller->SellerAccount->seller_shop_display_name); ?> <?php else: ?> <?php echo e(app('general_setting')->company_name); ?> <?php endif; ?>">
                      <?php else: ?>
                      <img src="<?php echo e($seller->photo?showImage($seller->photo):showImage('frontend/default/img/avatar.jpg')); ?>" alt="<?php if(@$seller->role->type == 'seller'): ?> <?php echo e(@$seller->SellerAccount->seller_shop_display_name); ?> <?php else: ?> <?php echo e(app('general_setting')->company_name); ?> <?php endif; ?>" title="<?php if(@$seller->role->type == 'seller'): ?> <?php echo e(@$seller->SellerAccount->seller_shop_display_name); ?> <?php else: ?> <?php echo e(app('general_setting')->company_name); ?> <?php endif; ?>">
                      <?php endif; ?>
                    </div>
                    <div class="d-block d-md-flex justify-content-between profile_content">
                        <div class="member_info_text">
                            <div class="member_info_details d-flex">
                                 <h4><?php if(@$seller->role->type == 'seller'): ?> <?php echo e(@$seller->SellerAccount->seller_shop_display_name); ?> <?php else: ?> <?php echo e(app('general_setting')->company_name); ?> <?php endif; ?></h4> <span>|</span>
                                 <p><?php echo e(__('defaultTheme.member_since')); ?> <?php echo e(date('M, Y',strtotime($seller->created_at))); ?> </p>
                            </div>
                            <div class="member_info_details d-flex">
                                <div class="stars mr_15">
                                    <?php if (isset($component)) { $__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Rating::class, ['rating' => $seller_rating]); ?>
<?php $component->withName('rating'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931)): ?>
<?php $component = $__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931; ?>
<?php unset($__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
                                </div>
                                <p> <?php echo e(getNumberTranslate(sprintf("%.2f",$seller_rating))); ?>/<?php echo e(getNumberTranslate(5)); ?> (<?php echo e($seller_total_review<10?'0':''); ?><?php echo e(getNumberTranslate($seller_total_review)); ?> <?php echo e(__('defaultTheme.review')); ?>)</p>
                            </div>
                            <div class="contact_wiz_box">
                                <div class="contact_link">                              
                                    <?php $__currentLoopData = $seller->sellerSocialLinks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $link): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <a href="<?php echo e($link->url); ?>">
                                            <i class="<?php echo e($link->icon); ?>"></i>
                                        </a>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>                            
                                </div>
                            </div>
                        </div>
                        <div class="member_info_text">
                            <div class="amazcart_delivery_wiz_body">
                                <?php
                                    $seller_rating_avg = $seller->sellerReviews()->where('status',1)->avg('rating');
                                    $seller_score = ($seller_rating_avg * 20);
                                ?>
                                                           
                                    <input type="hidden" class="form-control" name="seller_id" id="seller_id" value="<?php echo e($seller->id); ?>">
                                    <div class="Information_box d-flex gap-4 flex-wrap ">
                                        <div class="Information_box_left flex-fill">
                                            <div class="single_info_seller d-flex align-items-center gap_15">
                                                <h4 class="font_14 f_w_500 m-0"><?php echo e(getNumberTranslate($seller_score)); ?>%</h4>
                                                <p class="font_14 f_w_400 m-0"><?php echo e(__('amazy.Seller Score')); ?></p>
                                            </div>
                                        
                                            <div class="single_info_seller d-flex align-items-center gap_15">
                                                <h4 class="font_14 f_w_500 m-0"><?php echo e(getNumberTranslate($seller->countFollow())); ?></h4>
                                                <p class="font_14 f_w_400 m-0"><?php echo e(__('amazy.Followers')); ?></p>
                                            </div>
                                        </div>
                                        <div class="Information_box_right">
                                            <?php if(auth()->check() && auth()->id()!= $seller->id): ?>
                                                <?php if(auth()->check() && !auth()->user()->follow($seller->id)): ?> 
                                                    <button type="btn" id="follow_seller_btn" class="amaz_primary_btn style3 text-uppercase"><?php echo e(__('common.follow')); ?></button>
                                                <?php elseif(auth()->check() && auth()->user()->follow($seller->id)): ?>
                                                    <button type="btn" class="amaz_primary_btn style3 text-uppercase"><?php echo e(__('amazy.Followed')); ?></button>
                                                <?php endif; ?>
                                            <?php elseif(!auth()->check()): ?>
                                                <a href="<?php echo e(url('/login')); ?>" class="amaz_primary_btn style3 text-uppercase"><?php echo e(__('common.follow')); ?></a>
                                            <?php endif; ?>
                                        </div>                                
                                    </div>
                            </div>
                        </div>
                    </div>
                   
                </div>
               
            </div>
        </div>
        <div class="prodcuts_area ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-xl-3">
                        <div id="product_category_chose" class="product_category_chose mb_30 mt_15">
                            <div class="course_title mb_15 d-flex align-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" width="19.5" height="13" viewBox="0 0 19.5 13">
                                    <g id="filter-icon" transform="translate(28)">
                                        <rect id="Rectangle_1" data-name="Rectangle 1" width="19.5" height="2" rx="1" transform="translate(-28)" fill="#fd4949"/>
                                        <rect id="Rectangle_2" data-name="Rectangle 2" width="15.5" height="2" rx="1" transform="translate(-26 5.5)" fill="#fd4949"/>
                                        <rect id="Rectangle_3" data-name="Rectangle 3" width="5" height="2" rx="1" transform="translate(-20.75 11)" fill="#fd4949"/>
                                    </g>
                                </svg>
                                <h5 class="font_16 f_w_700 mb-0 "><?php echo e(__('amazy.Filter Products')); ?></h5>
                                <div class="catgory_sidebar_closeIcon flex-fill justify-content-end d-flex d-lg-none">
                                    <button id="catgory_sidebar_closeIcon" class="home10_primary_btn2 gj-cursor-pointer mb-0 small_btn"><?php echo e(__('amazy.close')); ?></button>
                                </div>
                                <button type="button" class="btn btn-sm btn-outline-light text-dark refresh_btn" id="refresh_btn"><?php echo e(__('amazy.refresh')); ?></button>
                            </div>
                            <div class="course_category_inner">
                                <?php if(count($CategoryList) > 0): ?>
                                    <?php $__currentLoopData = $CategoryList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="single_pro_categry">
                                        <h4 class="font_18 f_w_700 getProductByChoice cursor_pointer" data-id="parent_cat"
                                        data-value="<?php echo e($category->id); ?>">
                                            <?php echo e($category->name); ?>

                                        </h4>
                                        <ul class="Check_sidebar mb_35">
                                            <?php if(count($category->subCategories) > 0): ?>
                                                <?php $__currentLoopData = $category->subCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $subCategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li>
                                                    <label class="primary_checkbox d-flex">
                                                        <input type="checkbox" class="getProductByChoice attr_checkbox" data-id="cat"
                                                        data-value="<?php echo e($subCategory->id); ?>">
                                                        <span class="checkmark mr_10"></span>
                                                        <span class="label_name"><?php echo e($subCategory->name); ?></span>
                                                    </label>
                                                </li>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>
                                        </ul>
                                    </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                                <?php if(isset($brandList)): ?>
                                    <?php if(count($brandList) > 0): ?>
                                        <div class="single_pro_categry">
                                            <h4 class="font_18 f_w_700">
                                            <?php echo e(__('common.filter_by')); ?> <?php echo e(__('product.brand')); ?>

                                            </h4>
                                            <ul class="Check_sidebar mb_35">
                                                <?php $__currentLoopData = $brandList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $brand): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <li>
                                                        <label class="primary_checkbox d-flex">
                                                            <input type="checkbox" class="getProductByChoice" data-id="brand" data-value="<?php echo e($brand->id); ?>">
                                                            <span class="checkmark mr_10"></span>
                                                            <span class="label_name"><?php echo e($brand->name); ?></span>
                                                        </label>
                                                    </li>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </ul>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                                
                                <div class="single_pro_categry">
                                    <h4 class="font_18 f_w_700">
                                    <?php echo e(__('common.filter_by_rating')); ?>

                                    </h4>
                                    <ul class="rating_lists mb_35">
                                        <li>
                                            <div class="ratings">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <label class="primary_checkbox d-flex filter-by-rating-one">
                                                    <input type="radio" name="attr_value[]" class="getProductByChoice attr_checkbox" data-id="rating" data-value="5" id="attr_value">
                                                    <span class="checkmark mr_10"></span>
                                                </label>
                                            </div>
                    
                    
                                        </li>
                                        <li>
                                            <div class="ratings">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star unrated"></i>
                                                <span class="text-nowrap"><?php echo e(__('defaultTheme.and_up')); ?></span>
                                                <label class="primary_checkbox d-flex filter-by-ratings">
                                                    <input type="radio" name="attr_value[]" class="getProductByChoice attr_checkbox" data-id="rating" data-value="4" id="attr_value">
                                                    <span class="checkmark mr_10"></span>
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ratings">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star unrated"></i>
                                                <i class="fas fa-star unrated"></i>
                                                <span class="text-nowrap"><?php echo e(__('defaultTheme.and_up')); ?></span>
                                                <label class="primary_checkbox d-flex filter-by-ratings">
                                                    <input type="radio" name="attr_value[]" class="getProductByChoice attr_checkbox" data-id="rating" data-value="3" id="attr_value">
                                                    <span class="checkmark mr_10"></span>
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ratings">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star unrated"></i>
                                                <i class="fas fa-star unrated"></i>
                                                <i class="fas fa-star unrated"></i>
                                                <span class="text-nowrap"><?php echo e(__('defaultTheme.and_up')); ?></span>
                                                <label class="primary_checkbox d-flex filter-by-ratings">
                                                    <input type="radio" name="attr_value[]" class="getProductByChoice attr_checkbox" data-id="rating" data-value="2" id="attr_value">
                                                    <span class="checkmark mr_10"></span>
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ratings">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star unrated"></i>
                                                <i class="fas fa-star unrated"></i>
                                                <i class="fas fa-star unrated"></i>
                                                <i class="fas fa-star unrated"></i>
                                                <span class="text-nowrap"><?php echo e(__('defaultTheme.and_up')); ?></span>
                                                <label class="primary_checkbox d-flex filter-by-ratings">
                                                    <input type="radio" name="attr_value[]" class="getProductByChoice attr_checkbox" data-id="rating" data-value="1" id="attr_value">
                                                    <span class="checkmark mr_10"></span>
                                                </label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div id="price_range_div" class="single_pro_categry">
                                    <h4 class="font_18 f_w_700">
                                    <?php echo e(__('common.filter_by_price')); ?>

                                    </h4>
                                    <div class="filter_wrapper">
                                        <input type="hidden" id="min_price" value="<?php echo e($min_price_lowest); ?>" />
                                        <input type="hidden" id="max_price" value="<?php echo e($max_price_highest); ?>" />
                                        <div id="slider-range"></div>
                                        <div class="d-flex align-items-center prise_line">
                                            <button class="home10_primary_btn2 mr_20 mb-0 small_btn js-range-slider-0"><?php echo e(__('common.filter')); ?></button>
                                            <span><?php echo e(__('common.price')); ?>: </span> <input type="text" id="amount" readonly >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" id="seller_id" name="seller_id" value="<?php echo e($seller->id); ?>">
                    <div id="productShow" class="col-lg-8 col-xl-9">
                        <?php echo $__env->make('frontend.amazy.partials.merchant_page_paginate_data', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
    <script >

        (function($){
            "use strict";

            $(document).ready(function() {
                var filterType = [];
                initRange ()
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
                        `<h4 class="font_18 f_w_700">
                            Filter by Price
                        </h4>
                        <div class="filter_wrapper">
                            <input type="hidden" id="min_price" value="<?php echo e($min_price_lowest); ?>" />
                            <input type="hidden" id="max_price" value="<?php echo e($max_price_highest); ?>" />
                            <div id="slider-range"></div>
                            <div class="d-flex align-items-center prise_line">
                                <button class="home10_primary_btn2 mr_20 mb-0 small_btn js-range-slider-0">Filter</button>
                                <span>Price: </span> <input type="text" id="amount" readonly >
                            </div>
                        </div>`
                    );

                    initRange ();

                });

                $(document).on('click', '.getProductByChoice', function(event){
                    let type = $(this).data('id');
                    let el = $(this).data('value');
                    getProductByChoice(type, el);
                });
                $(document).on('click', '.attr_clr', function(event){
                    if ($(this).is(':checked')) {
                        $(this).addClass('selected_btn');
                    }else {
                        $(this).removeClass('selected_btn');
                    }
                });
                $(document).on('change', '.getFilterUpdateByIndex', function(event){
                    var paginate = $('#paginate_by').val();
                    var prev_stat = $('.filterCatCol').val();
                    var sort_by = $('#product_short_list').val();
                    var seller_id = $('#seller_id').val();
                    $('#pre-loader').show();
                    $.get('<?php echo e(route('frontend.seller.sort_product_filter_by_type')); ?>', {seller_id:seller_id, sort_by:sort_by, paginate:paginate}, function(data){
                        $('#productShow').html(data);
                        $('#product_short_list').niceSelect();
                        $('#paginate_by').niceSelect();
                        $('#pre-loader').hide();
                        $('.filterCatCol').val(prev_stat);
                    });
                });

                $(document).on('click', '.page_link', function(event) {
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

                function fetch_data(page) {
                    $('#pre-loader').show();
                    var paginate = $('#paginate_by').val();
                    var sort_by = $('#product_short_list').val();
                    if (sort_by != null && paginate != null) {
                        var url = "<?php echo e(route('frontend.seller.fetch-data',base64_encode($seller->id))); ?>"+'?sort_by='+sort_by+'&paginate='+paginate+'&page='+page;
                    }else if (sort_by == null && paginate != null) {
                        var url ="<?php echo e(route('frontend.seller.fetch-data',base64_encode($seller->id))); ?>"+'?paginate='+paginate+'&page='+page;
                    }else {
                        var url = "<?php echo e(route('frontend.seller.fetch-data',base64_encode($seller->id))); ?>" + '?page=' + page;
                    }
                    if (page != 'undefined') {
                        $.ajax({
                            url: url,
                            success: function(data) {
                                $('#productShow').html(data);
                                $('#product_short_list').niceSelect();
                                $('#paginate_by').niceSelect();
                                $('#pre-loader').hide();
                                activeTab();
                                initLazyload();
                            }
                        });
                    } else {
                        toastr.error("<?php echo e(__('common.error_message')); ?>", "<?php echo e(__('common.error')); ?>");
                    }

                }
                function fetch_filter_data(page){
                    $('#pre-loader').show();
                    var paginate = $('#paginate_by').val();
                    var sort_by = $('#product_short_list').val();
                    var seller_id = $('#seller_id').val();
                    if (sort_by != null && paginate != null) {
                        var url = "<?php echo e(route('frontend.seller.sort_product_filter_by_type')); ?>"+'?seller_id='+seller_id+'&sort_by='+sort_by+'&paginate='+paginate+'&page='+page;
                    }else if (sort_by == null && paginate != null) {
                        var url = "<?php echo e(route('frontend.seller.sort_product_filter_by_type')); ?>"+'?seller_id='+seller_id+'&paginate='+paginate+'&page='+page;
                    }else {
                        var url = "<?php echo e(route('frontend.seller.sort_product_filter_by_type')); ?>"+'?seller_id='+seller_id+'&page='+page;
                    }
                    if(page != 'undefined'){
                        $.ajax({
                            url:url,
                            success:function(data)
                            {
                                $('#productShow').html(data);
                                $('#product_short_list').niceSelect();
                                $('#paginate_by').niceSelect();
                                $('.filterCatCol').val(1);
                                $('#pre-loader').hide();
                                activeTab();
                                initLazyload();
                            }
                        });
                    }else{
                        toastr.error("<?php echo e(__('common.error_message')); ?>", "<?php echo e(__('common.error')); ?>");
                    }

                }

                let minimum_price = 0;
                let maximum_price = 0;
                let price_range_gloval = 0;
                $(document).on('click', '.js-range-slider-0', function(event){
                    var price_range = $("#amount").val().split('-');
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

                function initRange (){
                    var minVal = parseInt($('#min_price').val());
                    var maxVal = parseInt($('#max_price').val());
                    $("#slider-range").slider({
                        range: true,
                        min: minVal,
                        max: maxVal,
                        values: [minVal, maxVal],
                        slide: function (event, ui) {
                            $("#amount").val(ui.values[0]+"-"+ui.values[1]);
                        },
                    });
                    $("#amount").val(
                        $("#slider-range").slider("values", 0)+"-"+$("#slider-range").slider("values", 1)
                    );
                }

                function getProductByChoice(type,el)
                {
                    var objNew = {filterTypeId:type, filterTypeValue:[el]};

                    var objExistIndex = filterType.findIndex((objData) => objData.filterTypeId === type );

                    var seller_id = $('#seller_id').val();

                    if (type == "cat" || type =="brand") {
                        $.post('<?php echo e(route('frontend.seller.get_colors_by_type')); ?>', {_token:'<?php echo e(csrf_token()); ?>', id:el, type:type}, function(data){
                            $('.colorDiv').html(data);
                        });
                        $.post('<?php echo e(route('frontend.seller.get_attribute_by_type')); ?>', {_token:'<?php echo e(csrf_token()); ?>', id:el, type:type}, function(data){
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
                    $.post('<?php echo e(route('frontend.seller.product_filter_by_type')); ?>', {_token:'<?php echo e(csrf_token()); ?>', filterType:filterType, seller_id:seller_id}, function(data){
                        $('#productShow').html(data);
                        $('.filterCatCol').val(1);
                        $('#product_short_list').niceSelect();
                        $('#paginate_by').niceSelect();
                        $('#pre-loader').hide();

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

<?php echo $__env->make('frontend.amazy.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/pages/merchant_page.blade.php ENDPATH**/ ?>