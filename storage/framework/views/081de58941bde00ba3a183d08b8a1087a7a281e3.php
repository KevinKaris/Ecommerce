

<?php $__env->startSection('title'); ?>
    <?php if(@$product->product->meta_title != null): ?>
        <?php echo e(@substr(@$product->product->meta_title,0, 60)); ?>

    <?php else: ?>
        <?php echo e(@substr(@$product->product_name,0, 60)); ?>

    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('share_meta'); ?>

    <?php if(@$product->product->meta_description != null): ?>
        <meta property="og:description" content="<?php echo e(@$product->product->meta_description); ?>" />
        <meta name="description" content="<?php echo e(@$product->product->meta_description); ?>">
    <?php else: ?>
        <meta property="og:description" content="<?php echo e(@$product->product->description); ?>" />
        <meta name="description" content="<?php echo e(@$product->product->description); ?>">
    <?php endif; ?>

    <?php if(@$product->product->meta_title != null): ?>
        <meta name="title" content="<?php echo e(@substr(@$product->product->meta_title,0,60)); ?>"/>
        <meta property="og:title" content="<?php echo e(substr(@$product->product->meta_title,0,60)); ?>" />
    <?php else: ?>
        <meta property="og:title" content="<?php echo e(@substr(@$product->product_name,0,60)); ?>" />
        <meta name="title" content="<?php echo e(@substr(@$product->product_name,0,60)); ?>"/>
    <?php endif; ?>

    <?php if(@$product->product->meta_image != null && @getimagesize(showImage(@$product->product->meta_image))[0] > 200): ?>

        <meta property="og:image" content="<?php echo e(showImage($product->product->meta_image)); ?>" />
    <?php elseif(@$product->product->thumbnail_image_source != null && @getimagesize(showImage(@$product->product->thumbnail_image_source))[0] > 200): ?>

        <meta property="og:image" content="<?php echo e(showImage(@$product->product->thumbnail_image_source)); ?>" />
    <?php elseif(count(@$product->product->gallary_images) > 0 && @getimagesize(showImage(@$product->product->gallary_images[0]->images_source))[0] > 200): ?>
        <meta property="og:image" content="<?php echo e(showImage(@$product->product->gallary_images[0]->images_source)); ?>" />

    <?php endif; ?>
    <meta property="og:url" content="<?php echo e(singleProductURL(@$product->seller->slug, $product->slug)); ?>" />
    <meta property="og:image:width" content="400" />
    <meta property="og:image:height" content="300" />
    <meta property="og:type" content="<?php echo e(@$product->product->meta_description); ?>" />


    <?php
        $total_tag = count($product->product->tags);
        $meta_tags = '';
        foreach($product->product->tags as $key => $tag){
            if($key + 1 < $total_tag){
                $meta_tags .= $tag->name.', ';
            }else{
                $meta_tags .= $tag->name;
            }
        }
    ?>

    <meta name ="keywords", content="<?php echo e($meta_tags); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startPush('styles'); ?>
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('frontend/amazy/css/page_css/product_details.css'))); ?>" />
    <style>
        body{
                background-color: #f5f5f5!important;
            }
        .product_details_wrapper{
            margin-top: 20px;
            padding: 0;
            margin-bottom: 40px;
                width: 80%;
                margin-left: 51%;
                transform: translateX(-50%);
            }
            .product_details_wrapper >.container > .row .col-xl-9 > .row #main{
                background: #ffffff;
                border-radius: 5px;
                display: flex;
                flex-direction: row;
                flex-wrap: nowrap;
            }
            .product_details_wrapper >.container > .row .col-xl-9 > .row #main > .col-lg-6{
                margin-right: 0;
            }
            .product_details_wrapper >.container > .row .col-xl-9 > .row #main .pic-display{
                padding: 0;
            }
            .product_details_wrapper >.container > .row .col-xl-9 > .row .description, .product_details_wrapper >.container > .row .col-xl-9 > .row #Reviews, .product_details_wrapper >.container > .row .col-xl-9 > .row .customer-who-viewed{
                margin-top: 20px;
                background: #ffffff;
                border-radius: 5px;

            }
            .product_details_wrapper >.container > .row .col-xl-9 > .row .customer-who-viewed .product_widget5 .product_thumb_upper .thumb{
                height: 20%;
            }
            .product_details_wrapper >.container .side-section .amazcart_delivery_wiz{
                margin-bottom: 10px;
                background: #ffffff;
                border-radius: 5px;
            }
            .slick_custom_container .item-slick.slick-slide.slick-current.slick-active{
                width: 90%;
            }
            .slick_custom_container .slider-for img{
                width: 100%;
                height: auto;
            }
            .slick_custom_container .slider-for {
                border-bottom: 3px solid var(--border_color);
            }
            .slick_custom_container .item-slick{
                background: #ffffff;
            }
            .product_details_wrapper >.container .side-section{
                padding: 0;
                /* max-width: 22vw; */
                width: 26%;
            }
            .product_details_wrapper >.container .side2{
                display: none;
            }
            .product_details_wrapper >.container > .row .col-xl-9{
                padding: 0;
                margin-right: 30px;
                /* width: 55vw; */
                width: 70%;
            }
            .product_details_wrapper >.container > .row .col-xl-9 > .row #main{
                padding-bottom: 10px;
            }
            .product_details_wrapper >.container > .row .col-xl-9 > .row #main .product_content_details{
                width: 100%;
                padding: 5px;
            }
            .product_details_wrapper >.container > .row .col-xl-9 > .row #main .slider-container{
                width: 100%;
            }
            .product_details_wrapper >.container > .row .col-xl-9 > .row #main .product_content_details #total_price{
                font-weight: 700;
            }
            @media (max-width: 991px){
                .product_widget5{
                    width: 100%;
                    margin-right: 0;
                }
                .customer-who-viewed .col-md-6{
                    width: 24vw!important;
                }
                .product_details_wrapper{
                    width: 100%;
                }
                .product_details_wrapper >.container > .row .col-xl-9{
                    width: 100%;
                    margin-right: 0;
                    padding: 0;
                }
                .product_details_wrapper >.container .side-section{
                    width: 100%;
                    margin: 10px 0 0 0;
                    padding: 0;
                    vertical-align: top;
                }
                .product_details_wrapper >.container .side1{
                    display: none;
                }
                .product_details_wrapper >.container .side2{
                    display: block;
                }
                .product_details_wrapper >.container > .row .col-xl-9 > .row #main{
                    flex-wrap: wrap;
                }
                .product_details_wrapper >.container > .row .col-xl-9 > .row #main .product_content_details{
                    width: 100%;
                }
                .product_details_wrapper >.container > .row .col-xl-9 > .row #main .slider-container{
                    width: 100%;
                }
                .product_details_wrapper >.container > .row .col-xl-9 > .row #main .pic-display{
                    width: 100%
                }
                .product_details_wrapper >.container > .row .col-xl-9 > .row #main .detail{
                    width: 100%;
                }
                .product_details_wrapper >.container > .row .col-xl-9 > .row #main{
                    width: 100%;
                }
            }
            @media (max-width: 575px){
                .product_widget5{
                    width: 100%;
                }
                .customer-who-viewed .col-md-6{
                    width: 47%!important;
                }
            }
    </style>
    <?php if(isRtl()): ?>
        <style>
            .zoomWindowContainer div {
                left: 0!important;
                right: 510px;
            }
            .product_details_part .cs_color_btn .radio input[type="radio"] + .radio-label:before {
                left: -1px !important;
            }
            @media (max-width: 970px) {
                .zoomWindowContainer div {
                    right: inherit!important;
                }
            }
        </style>
    <?php endif; ?>
<?php $__env->stopPush(); ?>
<?php $__env->startSection('content'); ?>
    <!-- product_details_wrapper::start  -->
    <div class="product_details_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-xl-9">
                    <div class="row">
                        <div id="main">
                            <div class="col-lg-4 col-xl-4 pic-display">
                                <div class="slider-container slick_custom_container mb_30" id="myTabContent">
                                    <div class="slider-for gallery_large">
                                        <?php if(count($product->product->gallary_images) > 0): ?>
                                            <?php $__currentLoopData = $product->product->gallary_images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div class="item-slick <?php echo e($product->product->gallary_images->first()->id == $image->id?'slick-current slick-active':''); ?>" id="thumb_<?php echo e($image->id); ?>">
                                                    <img class="varintImg zoom_01" src="<?php echo e(showImage($image->images_source)); ?>" data-zoom-image="<?php echo e(showImage($image->images_source)); ?>" alt="<?php echo e($product->product_name); ?>" title="<?php echo e($product->product_name); ?>">
                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php else: ?>
                                            <div class="item-slick slick-current slick-active" id="thumb_<?php echo e($product->id); ?>">
                                                <img class="varintImg zoom_01" <?php if($product->thum_img != null): ?> data-zoom-image="<?php echo e(showImage($product->thum_img)); ?>" <?php else: ?> data-zoom-image="<?php echo e(showImage($product->product->thumbnail_image_source)); ?>" <?php endif; ?> <?php if($product->thum_img != null): ?> src="<?php echo e(showImage($product->thum_img)); ?>" <?php else: ?> src="<?php echo e(showImage($product->product->thumbnail_image_source)); ?>" <?php endif; ?> alt="<?php echo e($product->product_name); ?>" title="<?php echo e($product->product_name); ?>">
                                            </div>
                                        <?php endif; ?>
                                    </div>
                                    <div class="slider-nav">
                                        <?php if(count($product->product->gallary_images) > 0): ?>
                                            <?php $__currentLoopData = $product->product->gallary_images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $i => $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div class="item-slick <?php echo e($i == 0?'slick-active slick-current':''); ?>">
                                                    <img src="<?php echo e(showImage($image->images_source)); ?>" alt="<?php echo e($product->product_name); ?>" title="<?php echo e($product->product_name); ?>">
                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php else: ?>
                                            <div class="item-slick slick-active slick-current">
                                                <img <?php if($product->thum_img != null): ?> src="<?php echo e(showImage($product->thum_img)); ?>" <?php else: ?> src="<?php echo e(showImage($product->product->thumbnail_image_source)); ?>" <?php endif; ?> alt="<?php echo e($product->product_name); ?>" title="<?php echo e($product->product_name); ?>">
                                            </div>
                                        <?php endif; ?>
                                    </div>
                                    <input type="hidden" id="product_id" name="product_id" value="<?php echo e($product->id); ?>">
                                    <input type="hidden" id="maximum_order_qty" value="<?php echo e(@$product->product->max_order_qty); ?>">
                                    <input type="hidden" id="minimum_order_qty" value="<?php echo e(@$product->product->minimum_order_qty); ?>">
                                    <input type="hidden" name="thumb_image" id="thumb_image" value="<?php if($product->thum_img != null): ?> <?php echo e(showImage($product->thum_img)); ?> <?php else: ?> <?php echo e(showImage($product->product->thumbnail_image_source)); ?> <?php endif; ?>">
                                </div>
                                <div class="contact_wiz_box mt_20">
                                    <span class="contact_box_title font_16 f_w_500 d-block lh-1 "><?php echo e(__('defaultTheme.share_on')); ?>:</span>
                                    <div class="contact_link">
                                        <a target="_blank" href="<?php echo e(Share::currentPage()->facebook()->getRawLinks()); ?>">
                                            <i class="fab fa-facebook"></i>
                                        </a>
                                        <a target="_blank" href="<?php echo e(Share::currentPage()->twitter()->getRawLinks()); ?>">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                        <a target="_blank" href="<?php echo e(Share::currentPage()->linkedin()->getRawLinks()); ?>">
                                            <i class="fab fa-linkedin-in"></i>
                                        </a>
                                        <a target="_blank" href="<?php echo e(Share::currentPage()->whatsapp()->getRawLinks()); ?>">
                                            <i class="fab fa-whatsapp"></i>
                                        </a>
                                        <a target="_blank" href="<?php echo e(Share::currentPage()->telegram()->getRawLinks()); ?>">
                                            <i class="fab fa-telegram-plane"></i>
                                        </a>
                                        <a target="_blank" href="<?php echo e(Share::currentPage()->reddit()->getRawLinks()); ?>">
                                            <i class="ti-reddit"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 col-xl-8 detail">
                                <div class="product_content_details">
                                    <div id="stock_div">
                                        <?php if($product->stock_manage == 1 && @$product->skus->first()->product_stock >= @$product->product->minimum_order_qty): ?>
                                            <span class="stoke_badge"><?php echo e(__('common.in_stock')); ?></span>
                                        <?php elseif($product->stock_manage == 0): ?>
                                            <span class="stoke_badge"><?php echo e(__('common.in_stock')); ?></span>
                                        <?php else: ?>
                                            <span class="stokeout_badge"><?php echo e(__('amazy.Out of stock')); ?></span>
                                        <?php endif; ?>
                                    </div>
                                    <h3><?php echo e($product->product_name); ?></h3>
                                    <?php if(app('general_setting')->product_subtitle_show): ?>
                                        <?php if($product->subtitle_1): ?>
                                            <h5><?php echo e($product->subtitle_1); ?></h5>
                                        <?php endif; ?>
                                        <?php if($product->subtitle_2): ?>
                                            <h5><?php echo e($product->subtitle_2); ?></h5>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                    <div class="viendor_text d-flex align-items-center">
                                        <p class="stock_text"> <span class="text-uppercase"><?php echo e(__('defaultTheme.sku')); ?>:</span> <span class="stock_value" id="sku_id_li"> <?php echo e(@$product->skus->first()->sku->sku??'-'); ?></span></p>
                                        <p class="stock_text"> <span class="text-uppercase"><?php echo e(__('common.category')); ?>:</span>
                                            <?php
                                                $cates = count($product->product->categories);
                                            ?>
                                            <?php $__currentLoopData = $product->product->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <span><?php echo e($category->name); ?></span>
                                                <?php if($key + 1 < $cates): ?>, <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </p>
                                    </div>
                                    <div class="viendor_text d-flex align-items-center">
                                        <p class="stock_text"> <span class="text-uppercase"><?php echo e(__('defaultTheme.availability')); ?>:</span> <span class="stock_value" id="availability">
                                            <?php if($product->stock_manage == 0): ?>
                                            <?php echo e(__('defaultTheme.unlimited')); ?>

                                            <?php else: ?>
                                                <?php echo e($product->skus->first()->product_stock); ?>

                                            <?php endif; ?>
                                        </span></p>
                                    </div>
                                    <div class="product_ratings">
                                        <div class="stars">
                                            <?php if (isset($component)) { $__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Rating::class, ['rating' => $rating]); ?>
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
                                        <span><a href="#customer_reviews"><?php echo e(getNumberTranslate(sprintf("%.2f",$rating))); ?>/<?php echo e(getNumberTranslate(5)); ?> (<?php echo e(($total_review<10 && $total_review>0)?'0':''); ?><?php echo e(getNumberTranslate($total_review)); ?> <?php echo e(__('defaultTheme.review')); ?>)</a></span>
                                    </div>
    
                                    <div class="destils_prise_information_box mb_20">
                                        <h2 class="pro_details_prise d-flex align-items-center  m-0">
                                            <span>
                                                <?php echo e(getProductDiscountedPrice($product)); ?>

                                            </span>
                                        </h2>
                                        <div class="pro_details_disPrise d-flex align-items-center gap_15">
                                            <h4 class="discount_prise  m-0  ">
                                                <span class="text-decoration-line-through">
                                                    <?php if($product->hasDeal || $product->hasDiscount == 'yes'): ?>
                                                        <span><?php echo e(single_price($product->skus->max('selling_price'))); ?></span>
                                                    <?php endif; ?>
                                                </span>
                                            </h4>
    
                                            <?php if(@$product->hasDeal): ?>
                                                <?php if(@$product->hasDeal->discount > 0): ?>
                                                    <?php if(@$product->hasDeal->discount_type == 0): ?>
                                                        <span class="diccount_percents">
                                                            -<?php echo e(getNumberTranslate(@$product->hasDeal->discount)); ?>%
                                                        </span>
                                                    <?php else: ?>
                                                        <span class="diccount_percents">
                                                            -<?php echo e(single_price(@$product->hasDeal->discount)); ?>

                                                        </span>
                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            <?php else: ?>
                                                <?php if(@$product->hasDiscount == 'yes'): ?>
                                                    <?php if($product->discount > 0): ?>
                                                        <?php if($product->discount_type == 0): ?>
                                                        <span class="diccount_percents">
                                                            -<?php echo e(getNumberTranslate($product->discount)); ?>%
                                                        </span>
                                                        <?php else: ?>
                                                        <span class="diccount_percents">
                                                            -<?php echo e(single_price($product->discount)); ?>

                                                        </span>
                                                        <?php endif; ?>
                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        </div>
                                        <input type="hidden" name="product_sku_id" id="product_sku_id" value="<?php echo e($product->product->product_type == 1?$product->skus->first()->id : $product->skus->first()->id); ?>">
                                        <input type="hidden" name="seller_id" id="seller_id" value="<?php echo e($product->user_id); ?>">
                                        <input type="hidden" id="owner" value="<?php echo e(encrypt($product->user_id)); ?>">
                                        <input type="hidden" name="stock_manage_status" id="stock_manage_status" value="<?php echo e($product->stock_manage); ?>">
    
                                        <p class="pro_details_text">
                                            <span class="text-uppercase"><?php echo e(__('common.tag')); ?>:</span>
                                            <?php
                                                $total_tag = count($product->product->tags);
                                            ?>
                                            <?php $__currentLoopData = $product->product->tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <a class="tag_link" href="<?php echo e(route('frontend.category-product',['slug' => $tag->name, 'item' =>'tag'])); ?>"><?php echo e($tag->name); ?></a>
                                                <?php if($key + 1 < $total_tag): ?>, <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </p>
                                    </div>
    
                                    <input type="hidden" name="product_type" class="product_type" value="<?php echo e($product->product->product_type); ?>">
                                    <?php if($product->product->product_type == 2): ?>
                                        <?php $__currentLoopData = session()->get('item_details'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($item['name'] === "Color"): ?>
                                                <div class="product_color_varient mb_20">
                                                    <h5 class="font_14 f_w_500 theme_text3  text-capitalize d-block mb_10" ><?php echo e($item['name']); ?>:</h5>
                                                    <div class="color_List d-flex gap_5 flex-wrap">
                                                        <input type="hidden" class="attr_value_name" name="attr_val_name[]" value="<?php echo e($item['value'][0]); ?>">
                                                        <input type="hidden" class="attr_value_id" name="attr_val_id[]" value="<?php echo e($item['id'][0]); ?>-<?php echo e($item['attr_id']); ?>">
                                                        <?php $__currentLoopData = $item['value']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k => $value_name): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <label class="round_checkbox d-flex">
                                                                <input id="radio-<?php echo e($k); ?>" name="color_filt" class="attr_val_name" type="radio" color="color" <?php if($k === 0): ?> checked <?php endif; ?> data-value="<?php echo e($item['id'][$k]); ?>" data-value-key="<?php echo e($item['attr_id']); ?>" value="<?php echo e($value_name); ?>"/>
                                                                <span class="checkmark colors_<?php echo e($k); ?> class_color_<?php echo e($item['code'][$k]); ?>">
                                                                    <div class="check_bg_color"></div>
                                                                </span>
                                                            </label>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </div>
                                                </div>
                                            <?php endif; ?>
    
                                            <?php if($item['name'] != "Color"): ?>
                                                <div class="product_color_varient mb_20">
                                                    <h5 class="font_14 f_w_500 theme_text3  text-capitalize d-block mb_10" ><?php echo e($item['name']); ?>:</h5>
                                                    <div class="color_List d-flex gap_5 flex-wrap">
                                                        <input type="hidden" class="attr_value_name" name="attr_val_name[]" value="<?php echo e($item['value'][0]); ?>">
                                                        <input type="hidden" class="attr_value_id" name="attr_val_id[]" value="<?php echo e($item['id'][0]); ?>-<?php echo e($item['attr_id']); ?>">
                                                        <?php $__currentLoopData = $item['value']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $m => $value_name): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <a class="attr_val_name size_btn not_111 <?php if($m === 0): ?> selected_btn <?php endif; ?>" color="not" data-value-key="<?php echo e($item['attr_id']); ?>" data-value="<?php echo e($item['id'][$m]); ?>"><?php echo e($value_name); ?></a>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </div>
                                                </div>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    
                                        <?php
                                            $variant_images = [];
                                            $variant_skus = [];
                                            foreach($product->skus as $sku){
                                                if(@$sku->sku->variant_image){
                                                    $variant_images[] = $sku->sku->variant_image;
                                                    $variant_skus[] = $sku->sku->sku;
                                                }
                                            }
                                        ?>
                                        <?php if(count($variant_images) > 0): ?>
                                            <div class="single_details_content variant_image d-md-flex">
                                                <h5><?php echo e(__('amazy.Variant images')); ?>:</h5>
                                                <div class="img_div_width d-flex">
                                                    <?php $__currentLoopData = $variant_images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $variant_key => $variant_image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <div class="sku_img_div">
                                                            <img src="<?php echo e(showImage($variant_image)); ?>" title="<?php echo e($variant_skus[$variant_key]); ?>" class="img-fluid p-1" title="<?php echo e($variant_skus[$variant_key]); ?>"/>
                                                        </div>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </div>
                                            </div>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                    <!--show wholesale price -->
                                    <?php if(isModuleActive('WholeSale')): ?>
                                        <div class="<?php echo e(@$product->skus->first()->wholeSalePrices->count() ? 'd-flex':'d-none'); ?>">
                                            <table class="table-sm append_w_s_p_tbl mb-3" width="100%">
                                                <thead>
                                                <tr class="border-bottom ">
                                                    <td  class="text-left">
                                                        <label for="" class="control-label"><?php echo e(__('common.Min QTY')); ?></label>
                                                    </td>
                                                    <td class="text-left">
                                                        <label for="" class="control-label"><?php echo e(__('common.Max QTY')); ?></label>
                                                    </td>
    
                                                    <td class="text-left">
                                                        <label for="" class="control-label"><?php echo e(__('common.unit_price')); ?></label>
                                                    </td>
                                                </tr>
                                                </thead>
                                                <tbody id="append_w_s_p_all">
    
                                                </tbody>
                                            </table>
                                        </div>
                                    <?php endif; ?>
                                    <div class="product_info">
                                        
                                        <div class="single_pro_varient">
                                            <h5 class="font_14 f_w_500 theme_text3 " ><?php echo e(__('common.quantity')); ?>:</h5>
                                            <div class="product_number_count mr_5" data-target="amount-1">
                                                <span class="count_single_item inumber_decrement qtyChange" data-value="-"> <i class="ti-minus"></i></span>
                                                <input name="qty" id="qty" class="count_single_item input-number qty" type="text" readonly data-value="<?php echo e(@$product->product->minimum_order_qty); ?>" value="<?php echo e(getNumberTranslate(@$product->product->minimum_order_qty)); ?>">
                                                <span class="count_single_item number_increment qtyChange" data-value="+"> <i class="ti-plus"></i></span>
                                            </div>
    
                                            
                                        </div>
                                        <input type="hidden" name="base_sku_price" id="base_sku_price" value="
                                            <?php if(@$product->hasDeal): ?>
                                                <?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount)); ?>

                                            <?php else: ?>
                                                <?php if($product->hasDiscount == 'yes'): ?>
                                                <?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount)); ?>

    
                                                <?php else: ?>
                                                    <?php echo e(@$product->skus->first()->selling_price); ?>

                                                <?php endif; ?>
                                            <?php endif; ?>
                                        ">
                                        <input type="hidden" name="final_price" id="final_price" value="
                                            <?php if(@$product->hasDeal): ?>
                                                <?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount)); ?>

                                            <?php else: ?>
                                                <?php if($product->hasDiscount == 'yes'): ?>
                                                <?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount)); ?>

    
                                                <?php else: ?>
                                                    <?php echo e(@$product->skus->first()->selling_price); ?>

                                                <?php endif; ?>
                                            <?php endif; ?>
                                        ">
                                        <h5 class="mb-0"><?php echo e(__('common.total')); ?>:
                                            <span id="total_price">
                                                <?php if(@$product->hasDeal): ?>
                                                    <?php echo e(single_price(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount) * $product->product->minimum_order_qty)); ?>

                                                <?php else: ?>
                                                    <?php if($product->hasDiscount == 'yes'): ?>
                                                        <?php echo e(single_price(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount) * $product->product->minimum_order_qty)); ?>

    
                                                    <?php else: ?>
                                                        <?php echo e(single_price(@$product->skus->first()->selling_price * $product->product->minimum_order_qty)); ?>

                                                    <?php endif; ?>
    
                                                <?php endif; ?>
                                            </span>
                                        </h5>
    
                                        <div class="row mt_30 " id="add_to_cart_div">
                                            
                                                <?php if($product->stock_manage == 1 && $product->skus->first()->product_stock >= $product->product->minimum_order_qty): ?>
                                                    <div class="col-md-6">
                                                        <button type="button" id="add_to_cart_btn" class="amaz_primary_btn style2 mb_20  add_to_cart add_to_cart_btn text-uppercase flex-fill text-center w-100"><?php echo e(__('common.add_to_cart')); ?></button>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <button type="button" id="butItNow" class="amaz_primary_btn3 mb_20  w-100 text-center justify-content-center text-uppercase buy_now_btn" data-id="<?php echo e($product->id); ?>" data-type="product"><?php echo e(__('common.buy_now')); ?></button>
                                                    </div>
                                                <?php elseif($product->stock_manage == 0): ?>
                                                    <div class="col-md-6">
                                                        <button type="button" id="add_to_cart_btn" class="amaz_primary_btn style2 mb_20  add_to_cart text-uppercase add_to_cart_btn flex-fill text-center w-100"><?php echo e(__('common.add_to_cart')); ?></button>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <button type="button" id="butItNow" class="amaz_primary_btn3 mb_20  w-100 text-center justify-content-center text-uppercase buy_now_btn" data-id="<?php echo e($product->id); ?>" data-type="product"><?php echo e(__('common.buy_now')); ?></button>
                                                    </div>
                                                <?php else: ?>
                                                    <div class="col-md-6">
                                                        <button type="button" disabled class="amaz_primary_btn style2 mb_20  add_to_cart text-uppercase flex-fill text-center w-100"><?php echo e(__('defaultTheme.out_of_stock')); ?></button>
                                                    </div>
                                                <?php endif; ?>
                                            
                                        </div>
    
                                        <div class="add_wish_compare d-flex alingn-items-center mb_20">
                                            <a id="wishlist_btn" data-product_id="<?php echo e($product->id); ?>" data-seller_id="<?php echo e($product->user_id); ?>" class="single_wish_compare text-uppercase text-nowrap cursor_pointer">
                                                <i class="ti-heart"></i> <?php echo e(__('defaultTheme.add_to_wishlist')); ?>

                                            </a>
                                            <a id="add_to_compare_btn" data-product_sku_id="#product_sku_id" data-product_type="<?php echo e($product->product->product_type); ?>" class="single_wish_compare text-uppercase text-nowrap cursor_pointer">
                                                <i class="ti-control-shuffle"></i> <?php echo e(__('defaultTheme.add_to_compare')); ?>

                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <?php
                                    $both_buy_product = null;
                                    if(@$product->product->display_in_details == 1){
                                        if($product->up_sales->count()){
                                            $both_buy_product = @$product->up_sales[0]->up_seller_products[0];
                                        }
                                    }else{
                                        if($product->cross_sales->count()){
                                            $both_buy_product = @$product->cross_sales[0]->cross_seller_products[0];
                                        }
                                    }
                                ?>
                                <?php if($product->stock_manage == 1 && $product->skus->first()->product_stock >= $product->product->minimum_order_qty || $product->stock_manage == 0): ?>
                                    <?php if($both_buy_product && $both_buy_product->stock_manage == 1 && $both_buy_product->skus->first()->product_stock >= $both_buy_product->product->minimum_order_qty || $both_buy_product && $both_buy_product->stock_manage == 0): ?>
                                    <div class="product_details_sujjetion">
                                        <h4 class="font_14 f_w_700 text-uppercase mb_12 lh-1"><?php echo e(__('amazy.YOU CAN ALSO BUY')); ?>:</h4>
                                        <div class="product_details_sujjetion_box">
                                            <a href="<?php echo e(singleProductURL(@$both_buy_product->seller->slug, $both_buy_product->slug)); ?>" class="product_details_sujjetion_single d-flex align-items-center gap_15">
                                                <?php
                                                    if(@$product->hasDeal){
                                                        $both_buy_price = selling_price(@$both_buy_product->skus->first()->selling_price,@$both_buy_product->hasDeal->discount_type,@$both_buy_product->hasDeal->discount);
                                                    }else{
                                                        if(@$product->hasDiscount == 'yes'){
                                                            $both_buy_price = selling_price(@$both_buy_product->skus->first()->selling_price,@$both_buy_product->discount_type,@$both_buy_product->discount);
                                                        }else{
                                                            $both_buy_price = @$both_buy_product->skus->first()->selling_price;
                                                        }
                                                    }
                                                ?>
                                                <input type="hidden" id="both_buy_price" value="<?php echo e($both_buy_price); ?>">
                                                <div class="thumb both_buy">
                                                    <img src="
                                                    <?php if(@$both_buy_product->thum_img != null): ?>
                                                        <?php echo e(showImage(@$both_buy_product->thum_img)); ?>

                                                    <?php else: ?>
                                                        <?php echo e(showImage(@$both_buy_product->product->thumbnail_image_source)); ?>

                                                    <?php endif; ?>
                                                    " alt="<?php echo e(@$both_buy_product->product->product_name); ?>" title="<?php echo e(@$both_buy_product->product->product_name); ?>">
                                                </div>
                                                <div class="product_details_sujjetion_content">
                                                    <h4 class="fs-6 f_w_700"><?php if($both_buy_product->product_name): ?> <?php echo e(textLimit($both_buy_product->product_name,28)); ?> <?php else: ?> <?php echo e(textLimit(@$both_buy_product->product->product_name,28)); ?> <?php endif; ?></h4>
                                                    <p class="font_14 f_w_500 mb-0 lh-1">
                                                        <?php echo e(single_price($both_buy_price)); ?>

                                                    </p>
                                                </div>
                                            </a>
                                            <div class="product_details_sujjetion_total d-flex align-items-center gap_15">
                                                <div class="product_details_sujjetion_left flex-fill">
                                                    <span class="font_12 f_w_500 d-block"><?php echo e(__('common.total_price')); ?>:</span>
                                                    <h4 id="both_buy_price_show" class="font_16 f_w_700 m-0 lh-1"></h4>
                                                </div>
                                                <a href="#" class="amaz_primary_btn style3 text-uppercase" id="both_buy_btn" data-sku_id="<?php echo e(@$both_buy_product->skus->first()->id); ?>"
                                                    data-seller_id="<?php echo e($both_buy_product->user_id); ?>" data-product_id="<?php echo e($both_buy_product->id); ?>" data-qty="<?php echo e(@$both_buy_product->product->minimum_order_qty); ?>" ><?php echo e(__('amazy.Buy Both')); ?></a>
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="col-xl-3 side-section side2">
                    <?php
                        $free_shipping = \Modules\Shipping\Entities\ShippingMethod::where('request_by_user', $product->user_id)->where('is_active', 1)->where('id','>', 1)->where('cost', 0)->first();
                    ?>
                    <?php if($free_shipping): ?>
                        <div class="amazcart_delivery_wiz mb_20">
                            <div class="amazcart_delivery_wiz_head">
                                <h4 class="font_18 f_w_700 m-0"><?php echo e(__('amazy.Delivery Info')); ?></h4>
                            </div>
                            <div class="amazcart_delivery_wiz_body">
                                <h4 class="font_16 f_w_700 mb_6"><?php echo e($free_shipping->method_name); ?></h4>
                                <p class="delivery_text font_14 f_w_400"><?php echo e(__('common.free_shipping_on')); ?> <?php echo e($free_shipping->method_name); ?> <?php echo e(__('common.starts from order amount')); ?> <?php echo e(single_price($free_shipping->minimum_shopping)); ?></p>
                            </div>
                        </div>
                    <?php endif; ?>
                    <div class="amazcart_delivery_wiz mb_20">
                        <div class="amazcart_delivery_wiz_head">
                            <h4 class="font_18 f_w_700 m-0"><?php echo e(__('common.choose_your_location')); ?></h4>
                        </div>
                        <div class="amazcart_delivery_wiz_body">
                            <div class="loc_city_selectBox d-flex flex-column">
                                <div class="selectBox_box ">
                                    <?php
                                        if(@$product->seller->role_id == 1){
                                            $country_id = app('general_setting')->country_id;
                                            $city_id = app('general_setting')->city_id;
                                        }else{
                                            $country_id = @$product->seller->SellerBusinessInformation->business_country;
                                            $city_id = @$product->seller->SellerBusinessInformation->business_city;
                                        }
                                        $country = Modules\Setup\Entities\Country::find($country_id);
                                    ?>
                                    <select class="amaz_select2 mb_10 w-100" id="select_city" name="select_city">
                                        <option data-display="Choose City" selected disabled><?php echo e(__('common.choose_city')); ?></option>
                                        <?php $__currentLoopData = $country->cities; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($city->id); ?>" <?php echo e(($city->id == $city_id)?'selected':''); ?>><?php echo e($city->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                                <div class="selectBox_box">
                                    <?php
                                        $pickup_locations = \Modules\Shipping\Entities\PickupLocation::where('created_by', $product->user_id)->where('status', 1)->get();
                                    ?>
                                    <select class="amaz_select2 w-100" id="selectPickup">
                                        <option data-display="Choose pickup location" disabled><?php echo e(__('amazy.Choose pickup location')); ?></option>
                                        <?php $__currentLoopData = $pickup_locations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pickup_location): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($pickup_location->id); ?>" <?php echo e($pickup_location->is_default?'selected':''); ?>><?php echo e($pickup_location->address); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="amazcart_delivery_wiz_sep d-flex gap_15 mb_10">
                                <div class="icon d-flex align-items-center justify-content-center ">
                                    <img src="<?php echo e(url('/')); ?>/public/frontend/amazy/img/product_details/details_car.svg" alt="<?php echo e(__('amazy.Door Delivery')); ?>" title="<?php echo e(__('amazy.Door Delivery')); ?>">
                                </div>
                                <div class="amazcart_delivery_wiz_content">
                                    <h4 class="font_16 f_w_700 mb_6"><?php echo e(__('amazy.Door Delivery')); ?></h4>
                                    <p class="delivery_text font_14 f_w_400" id="door_delivery"></p>
                                </div>
                            </div>
                            <div class="amazcart_delivery_wiz_sep d-flex gap_15 ">
                                <div class="icon d-flex align-items-center justify-content-center ">
                                    <img src="<?php echo e(url('/')); ?>/public/frontend/amazy/img/product_details/details_pickup.svg" alt="<?php echo e(__('amazy.Pickup Location')); ?>" title="<?php echo e(__('amazy.Pickup Location')); ?>">
                                </div>
                                <div class="amazcart_delivery_wiz_content">
                                    <h4 class="font_16 f_w_700 mb_6"><?php echo e(__('amazy.Pickup Location')); ?></h4>
                                    <p class="delivery_text font_14 f_w_400 mb-0" id="pickup_location"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="amazcart_delivery_wiz mb_20">
                        <div class="amazcart_delivery_wiz_body">
                            <div class="amazcart_delivery_wiz_sep d-flex gap_15 mb_10">
                                <div class="icon d-flex align-items-center justify-content-center ">
                                    <img src="<?php echo e(url('/')); ?>/public/frontend/amazy/img/product_details/details_pickup.svg" alt="<?php echo e(__('amazy.Return Policy')); ?>" title="<?php echo e(__('amazy.Return Policy')); ?>">
                                </div>
                                <div class="amazcart_delivery_wiz_content">
                                    <h4 class="font_16 f_w_700 mb_6"><?php echo e(__('amazy.Return Policy')); ?></h4>
                                    <p class="delivery_text font_14 f_w_400">
                                        <?php echo e(__('amazy.Easy Return, Quick Refund.')); ?> <a class="text-nowrap" href="<?php echo e(url('/return-exchange')); ?>"><?php echo e(__('common.see_more')); ?>.</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php if(isModuleActive('MultiVendor')): ?>
                        <div class="amazcart_delivery_wiz mb_30">
                            <div class="amazcart_delivery_wiz_head">
                                <h4 class="font_18 f_w_700 m-0"><?php echo e(__('amazy.Seller Information')); ?></h4>
                            </div>
                            <div class="amazcart_delivery_wiz_body">
                                <h4 class="font_14 f_w_700 mb-0">
                                    <a id="shopLink" href="
                                        <?php if($product->seller->slug): ?>
                                            <?php echo e(route('frontend.seller',$product->seller->slug)); ?>

                                        <?php else: ?>
                                            <?php echo e(route('frontend.seller',base64_encode($product->seller->id))); ?>

                                        <?php endif; ?>
                                    ">
                                        <?php if($product->seller->role->type == 'seller'): ?>
                                            <?php if(@$product->seller->SellerAccount->seller_shop_display_name): ?>
                                                <?php echo e(@$product->seller->SellerAccount->seller_shop_display_name); ?>

                                            <?php else: ?>
                                                <?php echo e($product->seller->first_name .' '.$product->seller->last_name); ?>

                                            <?php endif; ?>
                                        <?php else: ?>
                                            <?php echo e(app('general_setting')->company_name); ?>

                                        <?php endif; ?>
                                    </a>

                                </h4>
                                <?php
                                    $seller_rating_avg = $product->seller->sellerReviews()->where('status',1)->avg('rating');
                                    $seller_score = ($seller_rating_avg * 20);
                                ?>                                                          
                                    <input type="hidden" class="form-control" name="seller_id" id="seller_id" value="<?php echo e($product->seller->id); ?>">
                                    <div class="Information_box d-flex gap-2 flex-wrap ">
                                        <div class="Information_box_left flex-fill">
                                            <div class="single_info_seller d-flex align-items-center gap_15">
                                                <h4 class="font_14 f_w_500 m-0"><?php echo e(getNumberTranslate($seller_score)); ?>%</h4>
                                                <p class="font_14 f_w_400 m-0"><?php echo e(__('amazy.Seller Score')); ?></p>
                                            </div>                                   
                                            <div class="single_info_seller d-flex align-items-center gap_15">
                                                <h4 class="font_14 f_w_500 m-0"><?php echo e(getNumberTranslate($product->seller->countFollow())); ?></h4>
                                                <p class="font_14 f_w_400 m-0"><?php echo e(__('amazy.Followers')); ?></p>
                                            </div>
                                        </div>
                                        <div class="Information_box_right">
                                            <?php if(auth()->check() && auth()->id()!= $product->seller->id): ?>
                                                <?php if(auth()->check() && !auth()->user()->follow($product->seller->id)): ?> 
                                                    <button type="btn" id="follow_seller_btn" class="amaz_primary_btn style3 text-uppercase"><?php echo e(__('common.follow')); ?></button>
                                                <?php elseif(auth()->check() && auth()->user()->follow($product->seller->id)): ?>
                                                    <button type="btn" class="amaz_primary_btn style3 text-uppercase"><?php echo e(__('amazy.Followed')); ?></button>
                                                <?php endif; ?>
                                            <?php elseif(!auth()->check()): ?>
                                                <a href="<?php echo e(url('/login')); ?>" class="amaz_primary_btn style3 text-uppercase"><?php echo e(__('common.follow')); ?></a>
                                            <?php endif; ?>
                                        </div>                                
                                    </div>                           
                                <div class="seller_performance_box">
                                    <h4 class="font_14 f_w_700 text-uppercase "><?php echo e(__('amazy.Seller Performance')); ?></h4>
                                    <?php $__currentLoopData = $product->seller->sellerReviews->where('status',1); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $seller_review): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <div class="single_seller_performance d-flex align-items-center gap_10 mb-1">
                                            <img src="<?php echo e(showImage('frontend/amazy/img/product_details/star.svg')); ?>" alt="<?php echo e(@$product->seller->SellerAccount->seller_shop_display_name); ?>" title="<?php echo e(@$product->seller->SellerAccount->seller_shop_display_name); ?>">
                                            <p class="font_14 f_w_400 m-0"><?php echo e(__('amazy.Order Fulfilment Rate')); ?>:</p>
                                            <h4 class="font_14 f_w_500 m-0">
                                                <?php if($seller_review->rating == 1): ?>
                                                <?php echo e(__('common.very_poor')); ?>

                                                <?php elseif($seller_review->rating == 2): ?>
                                                <?php echo e(__('common.poor')); ?>

                                                <?php elseif($seller_review->rating == 3): ?>
                                                <?php echo e(__('common.neutral')); ?>

                                                <?php elseif($seller_review->rating == 4): ?>
                                                <?php echo e(__('common.satisfactory')); ?>

                                                <?php elseif($seller_review->rating == 5): ?>
                                                <?php echo e(__('common.delightful')); ?>

                                                <?php endif; ?>
                                            </h4>
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
                    <div class="col-12 description">
                            <div class="product_details_dec mb_76">
                                <div class="product_details_dec_header">
                                    <h4 class="font_20 f_w_400 m-0 "><?php echo e(__('common.description')); ?></h4>
                                </div>
                                <div class="product_details_dec_body">
                                    <?php
                                        echo $product->product->description;
                                    ?>
                                </div>
                            </div>
                            <div class="product_details_dec mb_76">
                                <div class="product_details_dec_header">
                                    <h4 class="font_20 f_w_400 m-0 "><?php echo e(__('defaultTheme.product_specifications')); ?></h4>
                                </div>
                                <div class="product_details_dec_body">
                                    <div class="single_desc style2 mb_20">
                                        <p class="f_w_500 m-0"><b><?php echo e(__('common.brand')); ?></b>: <?php echo e(@$product->product->brand->name); ?></p>
                                        <p class="f_w_500 m-0"><b><?php echo e(__('common.model_number')); ?></b>: <?php echo e(@$product->product->model_number); ?></p>
                                        <p class="f_w_500 m-0"><b><?php echo e(__('common.availability')); ?></b>:
                                            <?php if($product->stock_manage == 1 && $product->skus->first()->product_stock >= $product->product->minimum_order_qty): ?>
                                                <?php echo e(__('common.in_stock')); ?>

                                            <?php elseif($product->stock_manage == 0): ?>
                                                <?php echo e(__('common.in_stock')); ?>

                                            <?php else: ?>
                                                <?php echo e(__('defaultTheme.out_of_stock')); ?>

                                            <?php endif; ?>
                                        </p>
                                        <p class="f_w_500 m-0"><b><?php echo e(__('common.product')); ?> <?php echo e(__('product.sku')); ?></b>:
                                            <?php $__currentLoopData = $product->product->skus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sku): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php echo e($sku->sku); ?> &nbsp; &nbsp;
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </p>
                                        <p class="f_w_500 m-0"><b><?php echo e(__('common.minimum_order_quantity')); ?></b>: <?php echo e(getNumberTranslate(@$product->product->minimum_order_qty)); ?></p>
                                        <p class="f_w_500 m-0"><b><?php echo e(__('common.maximum_order_quantity')); ?></b>: <?php echo e(getNumberTranslate(@$product->product->max_order_qty)); ?></p>
                                        <p class="f_w_500 m-0"><b><?php echo e(__('common.listed_date')); ?></b>: <?php echo e(date(app('general_setting')->dateFormat->format, strtotime(@$product->product->created_at))); ?></p>
                                    </div>

                                    <?php
                                        echo $product->product->specification;
                                    ?>
                                </div>
                            </div>
                            <?php if(!empty($product->product->pdf)): ?>
                            <div class="product_details_dec mb_76">
                                <div class="product_details_dec_header">
                                    <h4 class="font_20 f_w_400 m-0 "><?php echo e(__('product.pdf_specifications')); ?></h4>
                                </div>
                                <div class="product_details_dec_body">
                                    <a class="anchore_color" href="<?php echo e(asset(asset_path($product->product->pdf))); ?>" download><?php echo e(__('product.download_file')); ?></a>
                                </div>
                            </div>
                            <?php endif; ?>
                            <?php if($product->product->video_link): ?>
                                <div class="product_details_dec mb_76">
                                    <div class="product_details_dec_header">
                                        <h4 class="font_20 f_w_400 m-0 "><?php echo e(__('defaultTheme.video')); ?></h4>
                                    </div>
                                    <div class="product_details_dec_body">
                                        <div class="product_details">
                                            <?php if($product->product->video_provider == 'youtube'): ?>
                                                <?php
                                                    $link = str_replace('watch?v=','embed/',$product->product->video_link);
                                                ?>
                                                <iframe src="<?php echo e($link); ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                            <?php endif; ?>
                                            <?php if($product->product->video_provider == 'daily_motion'): ?>
                                                <?php
                                                    if(strpos($product->product->video_link, 'dai.ly') != false){
                                                        $link = str_replace('https://dai.ly/','https://www.dailymotion.com/embed/video/',$product->product->video_link);
                                                    }else{
                                                        $link = str_replace('https://www.dailymotion.com/video/','https://www.dailymotion.com/embed/video/',$product->product->video_link);
                                                    }
                                                ?>
                                                <div style="position:relative;padding-bottom:56.25%;height:0;overflow:hidden;">
                                                    <iframe style="width:100%;height:100%;position:absolute;left:0px;top:0px;overflow:hidden" frameborder="0" type="text/html"
                                                    src="<?php echo e($link); ?>" width="100%" height="100%" allowfullscreen allow="autoplay"> </iframe>
                                                </div>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                            <?php endif; ?>
                        </div>
                        <?php if($recent_viewed_products->count()): ?>
                            <div class="col-12 customer-who-viewed">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="section__title d-flex align-items-center gap-3 mb_30">
                                            <h3 class="m-0 flex-fill"><?php echo e(__('amazy.Customers who viewed this also viewed')); ?></h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <?php $__currentLoopData = $recent_viewed_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $recent_viewed_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <div class="col-xl-4 col-lg-4 col-md-6">
                                            <div class="product_widget5 mb_30">
                                                <div class="product_thumb_upper">
                                                    <?php
                                                        if(@$recent_viewed_product->thum_img != null){
                                                            $thumbnail = showImage(@$recent_viewed_product->thum_img);
                                                        }else {
                                                            $thumbnail = showImage(@$recent_viewed_product->product->thumbnail_image_source);
                                                        }
                
                                                        $price_qty = getProductDiscountedPrice(@$recent_viewed_product);
                                                        $showData = [
                                                            'name' => @$recent_viewed_product->product_name,
                                                            'url' => singleProductURL(@$recent_viewed_product->seller->slug, @$recent_viewed_product->slug),
                                                            'price' => $price_qty,
                                                            'thumbnail' => $thumbnail
                                                        ];
                                                    ?>
                                                    <a href="<?php echo e(singleProductURL($recent_viewed_product->seller->slug, $recent_viewed_product->slug)); ?>" class="thumb">
                                                        <img data-src="<?php echo e($thumbnail); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" alt="<?php echo e(@$recent_viewed_product->product_name); ?>" title="<?php echo e(@$recent_viewed_product->product_name); ?>" class="lazyload">
                                                    </a>
                                                    <div class="product_action">
                                                        <a href="" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$recent_viewed_product->product->product_type); ?>" data-seller=<?php echo e($recent_viewed_product->user_id); ?> data-product-sku=<?php echo e(@$recent_viewed_product->skus->first()->id); ?> data-product-id=<?php echo e($recent_viewed_product->id); ?>>
                                                            <i class="ti-control-shuffle"></i>
                                                        </a>
                                                        <a href="" class="add_to_wishlist <?php echo e($recent_viewed_product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($recent_viewed_product->id); ?>" data-product_id="<?php echo e($recent_viewed_product->id); ?>" data-seller_id="<?php echo e($recent_viewed_product->user_id); ?>">
                                                            <i class="ti-heart"></i>
                                                        </a>
                                                        <a class="quickView" data-product_id="<?php echo e($recent_viewed_product->id); ?>" data-type="product">
                                                            <i class="ti-eye"></i>
                                                        </a>
                                                    </div>
                                                    <div class="recomanded_discount">
                                                        <?php if($recent_viewed_product->hasDeal): ?>
                                                            <?php if($recent_viewed_product->hasDeal->discount >0): ?>
                                                                <span class="badge_1">
                                                                    <?php if($recent_viewed_product->hasDeal->discount >0): ?>
                                                                        <?php if($recent_viewed_product->hasDeal->discount_type ==0): ?>
                                                                            <?php echo e(getNumberTranslate($recent_viewed_product->hasDeal->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                                        <?php else: ?>
                                                                            <?php echo e(single_price($recent_viewed_product->hasDeal->discount)); ?> <?php echo e(__('common.off')); ?>

                                                                        <?php endif; ?>
                
                                                                    <?php endif; ?>
                                                                </span>
                                                            <?php endif; ?>
                                                        <?php else: ?>
                                                            <?php if($recent_viewed_product->hasDiscount == 'yes'): ?>
                                                            <?php if($recent_viewed_product->discount > 0): ?>
                                                                <span class="badge_1">
                                                                    <?php if($recent_viewed_product->discount >0): ?>
                                                                        <?php if($recent_viewed_product->discount_type ==0): ?>
                                                                            <?php echo e(getNumberTranslate($recent_viewed_product->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                                        <?php else: ?>
                                                                            <?php echo e(single_price($recent_viewed_product->discount)); ?> <?php echo e(__('common.off')); ?>

                                                                        <?php endif; ?>
                                                                    <?php endif; ?>
                                                                </span>
                                                            <?php endif; ?>
                                                            <?php endif; ?>
                                                        <?php endif; ?>
                                                    </div>
                                                </div>
                                                <div class="product__meta">
                                                    <a href="<?php echo e(singleProductURL(@$recent_viewed_product->seller->slug, $recent_viewed_product->slug)); ?>">
                                                        <h4><?php if($recent_viewed_product->product_name): ?> <?php echo e(textLimit(@$recent_viewed_product->product_name, 50)); ?> <?php else: ?> <?php echo e(textLimit(@$recent_viewed_product->product->product_name, 50)); ?> <?php endif; ?></h4>
                                                    </a>
                                                    <span class="product_banding "><?php echo e(@$recent_viewed_product->brand->name ?? __('generic')); ?></span>
                                                    <div class="stars justify-content-center">
                                                        <?php
                                                            $reviews = $recent_viewed_product->reviews->where('status',1)->pluck('rating');
                                                            if(count($reviews)>0){
                                                                $value = 0;
                                                                $rating = 0;
                                                                foreach($reviews as $review){
                                                                    $value += $review;
                                                                }
                                                                $rating = $value/count($reviews);
                                                                $total_review = count($reviews);
                                                            }else{
                                                                $rating = 0;
                                                                $total_review = 0;
                                                            }
                                                        ?>
                                                        <?php if (isset($component)) { $__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Rating::class, ['rating' => $rating]); ?>
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
                                                    <div class="product_prise">
                                                        <p>
                                                            <?php if($recent_viewed_product->hasDeal): ?>
                                                                <?php echo e(single_price(selling_price($recent_viewed_product->skus->first()->selling_price,$recent_viewed_product->hasDeal->discount_type,$recent_viewed_product->hasDeal->discount))); ?>

                                                            <?php else: ?>
                                                                <?php if($recent_viewed_product->hasDiscount == 'yes'): ?>
                                                                    <?php echo e(single_price(selling_price(@$recent_viewed_product->skus->first()->selling_price,@$recent_viewed_product->discount_type,@$recent_viewed_product->discount))); ?>

                                
                                                                <?php else: ?>
                                                                    <?php echo e(single_price(@$recent_viewed_product->skus->first()->selling_price)); ?>

                                                                <?php endif; ?>
                                                            <?php endif; ?>
                                                        </p>
                                                        <a class="add_cart add_to_cart addToCartFromThumnail" data-producttype="<?php echo e(@$recent_viewed_product->product->product_type); ?>" data-seller=<?php echo e($recent_viewed_product->user_id); ?> data-product-sku=<?php echo e(@$recent_viewed_product->skus->first()->id); ?> 
                                                            <?php if(@$recent_viewed_product->hasDeal): ?>
                                                                data-base-price=<?php echo e(selling_price(@$recent_viewed_product->skus->first()->selling_price,@$recent_viewed_product->hasDeal->discount_type,@$recent_viewed_product->hasDeal->discount)); ?>

                                                            <?php else: ?>
                                                                <?php if(@$recent_viewed_product->hasDiscount == 'yes'): ?>
                                                                    data-base-price=<?php echo e(selling_price(@$recent_viewed_product->skus->first()->selling_price,@$recent_viewed_product->discount_type,@$recent_viewed_product->discount)); ?>

                                                                <?php else: ?>
                                                                    data-base-price=<?php echo e(@$recent_viewed_product->skus->first()->selling_price); ?>

                                                                <?php endif; ?>
                                                            <?php endif; ?>
                                                            data-shipping-method=0
                                                            data-product-id=<?php echo e($recent_viewed_product->id); ?>

                                                            data-stock_manage="<?php echo e($recent_viewed_product->stock_manage); ?>"
                                                            data-stock="<?php echo e(@$recent_viewed_product->skus->first()->product_stock); ?>"
                                                            data-min_qty="<?php echo e(@$recent_viewed_product->product->minimum_order_qty); ?>"
                                                            data-prod_info="<?php echo e(json_encode($showData)); ?>"
                                                            ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>
                        <?php endif; ?>
                        <div class="col-12" id="Reviews">
                            <?php echo $__env->make(theme('partials._product_review_with_paginate'),['reviews' => @$product->ActiveReviewsWithPaginate, 'all_reviews' => $product->reviews], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 side-section side1">
                    <?php
                        $free_shipping = \Modules\Shipping\Entities\ShippingMethod::where('request_by_user', $product->user_id)->where('is_active', 1)->where('id','>', 1)->where('cost', 0)->first();
                    ?>
                    <?php if($free_shipping): ?>
                        <div class="amazcart_delivery_wiz mb_20">
                            <div class="amazcart_delivery_wiz_head">
                                <h4 class="font_18 f_w_700 m-0"><?php echo e(__('amazy.Delivery Info')); ?></h4>
                            </div>
                            <div class="amazcart_delivery_wiz_body">
                                <h4 class="font_16 f_w_700 mb_6"><?php echo e($free_shipping->method_name); ?></h4>
                                <p class="delivery_text font_14 f_w_400"><?php echo e(__('common.free_shipping_on')); ?> <?php echo e($free_shipping->method_name); ?> <?php echo e(__('common.starts from order amount')); ?> <?php echo e(single_price($free_shipping->minimum_shopping)); ?></p>
                            </div>
                        </div>
                    <?php endif; ?>
                    <div class="amazcart_delivery_wiz mb_20">
                        <div class="amazcart_delivery_wiz_head">
                            <h4 class="font_18 f_w_700 m-0"><?php echo e(__('common.choose_your_location')); ?></h4>
                        </div>
                        <div class="amazcart_delivery_wiz_body">
                            <div class="loc_city_selectBox d-flex flex-column">
                                <div class="selectBox_box ">
                                    <?php
                                        if(@$product->seller->role_id == 1){
                                            $country_id = app('general_setting')->country_id;
                                            $city_id = app('general_setting')->city_id;
                                        }else{
                                            $country_id = @$product->seller->SellerBusinessInformation->business_country;
                                            $city_id = @$product->seller->SellerBusinessInformation->business_city;
                                        }
                                        $country = Modules\Setup\Entities\Country::find($country_id);
                                    ?>
                                    <select class="amaz_select2 mb_10 w-100" id="select_city" name="select_city">
                                        <option data-display="Choose City" selected disabled><?php echo e(__('common.choose_city')); ?></option>
                                        <?php $__currentLoopData = $country->cities; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($city->id); ?>" <?php echo e(($city->id == $city_id)?'selected':''); ?>><?php echo e($city->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                                <div class="selectBox_box">
                                    <?php
                                        $pickup_locations = \Modules\Shipping\Entities\PickupLocation::where('created_by', $product->user_id)->where('status', 1)->get();
                                    ?>
                                    <select class="amaz_select2 w-100" id="selectPickup">
                                        <option data-display="Choose pickup location" disabled><?php echo e(__('amazy.Choose pickup location')); ?></option>
                                        <?php $__currentLoopData = $pickup_locations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pickup_location): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($pickup_location->id); ?>" <?php echo e($pickup_location->is_default?'selected':''); ?>><?php echo e($pickup_location->address); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="amazcart_delivery_wiz_sep d-flex gap_15 mb_10">
                                <div class="icon d-flex align-items-center justify-content-center ">
                                    <img src="<?php echo e(url('/')); ?>/public/frontend/amazy/img/product_details/details_car.svg" alt="<?php echo e(__('amazy.Door Delivery')); ?>" title="<?php echo e(__('amazy.Door Delivery')); ?>">
                                </div>
                                <div class="amazcart_delivery_wiz_content">
                                    <h4 class="font_16 f_w_700 mb_6"><?php echo e(__('amazy.Door Delivery')); ?></h4>
                                    <p class="delivery_text font_14 f_w_400" id="door_delivery"></p>
                                </div>
                            </div>
                            <div class="amazcart_delivery_wiz_sep d-flex gap_15 ">
                                <div class="icon d-flex align-items-center justify-content-center ">
                                    <img src="<?php echo e(url('/')); ?>/public/frontend/amazy/img/product_details/details_pickup.svg" alt="<?php echo e(__('amazy.Pickup Location')); ?>" title="<?php echo e(__('amazy.Pickup Location')); ?>">
                                </div>
                                <div class="amazcart_delivery_wiz_content">
                                    <h4 class="font_16 f_w_700 mb_6"><?php echo e(__('amazy.Pickup Location')); ?></h4>
                                    <p class="delivery_text font_14 f_w_400 mb-0" id="pickup_location"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="amazcart_delivery_wiz mb_20">
                        <div class="amazcart_delivery_wiz_body">
                            <div class="amazcart_delivery_wiz_sep d-flex gap_15 mb_10">
                                <div class="icon d-flex align-items-center justify-content-center ">
                                    <img src="<?php echo e(url('/')); ?>/public/frontend/amazy/img/product_details/details_pickup.svg" alt="<?php echo e(__('amazy.Return Policy')); ?>" title="<?php echo e(__('amazy.Return Policy')); ?>">
                                </div>
                                <div class="amazcart_delivery_wiz_content">
                                    <h4 class="font_16 f_w_700 mb_6"><?php echo e(__('amazy.Return Policy')); ?></h4>
                                    <p class="delivery_text font_14 f_w_400">
                                        <?php echo e(__('amazy.Easy Return, Quick Refund.')); ?> <a class="text-nowrap" href="<?php echo e(url('/return-exchange')); ?>"><?php echo e(__('common.see_more')); ?>.</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php if(isModuleActive('MultiVendor')): ?>
                        <div class="amazcart_delivery_wiz mb_30">
                            <div class="amazcart_delivery_wiz_head">
                                <h4 class="font_18 f_w_700 m-0"><?php echo e(__('amazy.Seller Information')); ?></h4>
                            </div>
                            <div class="amazcart_delivery_wiz_body">
                                <h4 class="font_14 f_w_700 mb-0">
                                    <a id="shopLink" href="
                                        <?php if($product->seller->slug): ?>
                                            <?php echo e(route('frontend.seller',$product->seller->slug)); ?>

                                        <?php else: ?>
                                            <?php echo e(route('frontend.seller',base64_encode($product->seller->id))); ?>

                                        <?php endif; ?>
                                    ">
                                        <?php if($product->seller->role->type == 'seller'): ?>
                                            <?php if(@$product->seller->SellerAccount->seller_shop_display_name): ?>
                                                <?php echo e(@$product->seller->SellerAccount->seller_shop_display_name); ?>

                                            <?php else: ?>
                                                <?php echo e($product->seller->first_name .' '.$product->seller->last_name); ?>

                                            <?php endif; ?>
                                        <?php else: ?>
                                            <?php echo e(app('general_setting')->company_name); ?>

                                        <?php endif; ?>
                                    </a>

                                </h4>
                                <?php
                                    $seller_rating_avg = $product->seller->sellerReviews()->where('status',1)->avg('rating');
                                    $seller_score = ($seller_rating_avg * 20);
                                ?>                                                          
                                    <input type="hidden" class="form-control" name="seller_id" id="seller_id" value="<?php echo e($product->seller->id); ?>">
                                    <div class="Information_box d-flex gap-2 flex-wrap ">
                                        <div class="Information_box_left flex-fill">
                                            <div class="single_info_seller d-flex align-items-center gap_15">
                                                <h4 class="font_14 f_w_500 m-0"><?php echo e(getNumberTranslate($seller_score)); ?>%</h4>
                                                <p class="font_14 f_w_400 m-0"><?php echo e(__('amazy.Seller Score')); ?></p>
                                            </div>                                   
                                            <div class="single_info_seller d-flex align-items-center gap_15">
                                                <h4 class="font_14 f_w_500 m-0"><?php echo e(getNumberTranslate($product->seller->countFollow())); ?></h4>
                                                <p class="font_14 f_w_400 m-0"><?php echo e(__('amazy.Followers')); ?></p>
                                            </div>
                                        </div>
                                        <div class="Information_box_right">
                                            <?php if(auth()->check() && auth()->id()!= $product->seller->id): ?>
                                                <?php if(auth()->check() && !auth()->user()->follow($product->seller->id)): ?> 
                                                    <button type="btn" id="follow_seller_btn" class="amaz_primary_btn style3 text-uppercase"><?php echo e(__('common.follow')); ?></button>
                                                <?php elseif(auth()->check() && auth()->user()->follow($product->seller->id)): ?>
                                                    <button type="btn" class="amaz_primary_btn style3 text-uppercase"><?php echo e(__('amazy.Followed')); ?></button>
                                                <?php endif; ?>
                                            <?php elseif(!auth()->check()): ?>
                                                <a href="<?php echo e(url('/login')); ?>" class="amaz_primary_btn style3 text-uppercase"><?php echo e(__('common.follow')); ?></a>
                                            <?php endif; ?>
                                        </div>                                
                                    </div>                           
                                <div class="seller_performance_box">
                                    <h4 class="font_14 f_w_700 text-uppercase "><?php echo e(__('amazy.Seller Performance')); ?></h4>
                                    <?php $__currentLoopData = $product->seller->sellerReviews->where('status',1); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $seller_review): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <div class="single_seller_performance d-flex align-items-center gap_10 mb-1">
                                            <img src="<?php echo e(showImage('frontend/amazy/img/product_details/star.svg')); ?>" alt="<?php echo e(@$product->seller->SellerAccount->seller_shop_display_name); ?>" title="<?php echo e(@$product->seller->SellerAccount->seller_shop_display_name); ?>">
                                            <p class="font_14 f_w_400 m-0"><?php echo e(__('amazy.Order Fulfilment Rate')); ?>:</p>
                                            <h4 class="font_14 f_w_500 m-0">
                                                <?php if($seller_review->rating == 1): ?>
                                                <?php echo e(__('common.very_poor')); ?>

                                                <?php elseif($seller_review->rating == 2): ?>
                                                <?php echo e(__('common.poor')); ?>

                                                <?php elseif($seller_review->rating == 3): ?>
                                                <?php echo e(__('common.neutral')); ?>

                                                <?php elseif($seller_review->rating == 4): ?>
                                                <?php echo e(__('common.satisfactory')); ?>

                                                <?php elseif($seller_review->rating == 5): ?>
                                                <?php echo e(__('common.delightful')); ?>

                                                <?php endif; ?>
                                            </h4>
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
    <!-- product_details_wrapper::end  -->


    <?php if($product->related_sales->count() > 0): ?>
        <!-- sujjested_prosuct_area::start  -->
        <div class="sujjested_prosuct_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section__title d-flex align-items-center gap-3 mb_30">
                            <h3 class="m-0 flex-fill"><?php echo e(__('defaultTheme.related_products')); ?></h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php $__currentLoopData = $product->related_sales; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_sale): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php $__currentLoopData = $related_sale->related_seller_products->take(2); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_seller_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="col-xl-3 col-lg-4 col-md-6">
                                <div class="product_widget5 mb_30">
                                    <div class="product_thumb_upper">
                                        <?php
                                            if(@$related_seller_product->thum_img != null){
                                                $thumbnail = showImage(@$related_seller_product->thum_img);
                                            }else {
                                                $thumbnail = showImage(@$related_seller_product->product->thumbnail_image_source);
                                            }

                                            $price_qty = getProductDiscountedPrice(@$related_seller_product);
                                            $showData = [
                                                'name' => @$related_seller_product->product_name,
                                                'url' => singleProductURL(@$related_seller_product->seller->slug, @$related_seller_product->slug),
                                                'price' => $price_qty,
                                                'thumbnail' => $thumbnail
                                            ];
                                        ?>
                                        <a href="<?php echo e(singleProductURL(@$related_seller_product->seller->slug, $related_seller_product->slug)); ?>" class="thumb">
                                            <img src="
                                            <?php echo e($thumbnail); ?>

                                            " alt="<?php echo e(@$related_seller_product->product_name); ?>" title="<?php echo e(@$related_seller_product->product_name); ?>">
                                        </a>
                                        <div class="product_action">
                                            <a href="" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$related_seller_product->product->product_type); ?>" data-seller=<?php echo e($related_seller_product->user_id); ?> data-product-sku=<?php echo e(@$related_seller_product->skus->first()->id); ?> data-product-id=<?php echo e($related_seller_product->id); ?>>
                                                <i class="ti-control-shuffle"></i>
                                            </a>
                                            <a href="" class="add_to_wishlist <?php echo e($related_seller_product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($related_seller_product->id); ?>" data-product_id="<?php echo e($related_seller_product->id); ?>" data-seller_id="<?php echo e($related_seller_product->user_id); ?>">
                                                <i class="ti-heart"></i>
                                            </a>
                                            <a class="quickView" data-product_id="<?php echo e($related_seller_product->id); ?>" data-type="product">
                                                <i class="ti-eye"></i>
                                            </a>
                                        </div>
                                        <div class="recomanded_discount">
                                            <?php if($related_seller_product->hasDeal): ?>
                                                <?php if($related_seller_product->hasDeal->discount >0): ?>
                                                    <span class="badge_1">
                                                        <?php if($related_seller_product->hasDeal->discount >0): ?>
                                                            <?php if($related_seller_product->hasDeal->discount_type ==0): ?>
                                                                <?php echo e(getNumberTranslate($related_seller_product->hasDeal->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                            <?php else: ?>
                                                                <?php echo e(single_price($related_seller_product->hasDeal->discount)); ?> <?php echo e(__('common.off')); ?>

                                                            <?php endif; ?>
    
                                                        <?php endif; ?>
                                                    </span>
                                                <?php endif; ?>
                                            <?php else: ?>
                                                <?php if($related_seller_product->hasDiscount == 'yes'): ?>
                                                <?php if($related_seller_product->discount > 0): ?>
                                                    <span class="badge_1">
                                                        <?php if($related_seller_product->discount >0): ?>
                                                            <?php if($related_seller_product->discount_type ==0): ?>
                                                                <?php echo e(getNumberTranslate($related_seller_product->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                            <?php else: ?>
                                                                <?php echo e(single_price($related_seller_product->discount)); ?> <?php echo e(__('common.off')); ?>

                                                            <?php endif; ?>
                                                        <?php endif; ?>
                                                    </span>
                                                <?php endif; ?>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="product__meta text-center">
                                        <span class="product_banding "><?php echo e(@$related_seller_product->brand->name ?? __('amazy.no_brand')); ?></span>
                                        <a href="<?php echo e(singleProductURL(@$related_seller_product->seller->slug, $related_seller_product->slug)); ?>">
                                            <h4><?php if($related_seller_product->product_name): ?> <?php echo e(textLimit(@$related_seller_product->product_name, 50)); ?> <?php else: ?> <?php echo e(textLimit(@$related_seller_product->product->product_name, 50)); ?> <?php endif; ?></h4>
                                        </a>
                                        <div class="stars justify-content-center">
                                            <?php
                                                $reviews = $related_seller_product->reviews->where('status',1)->pluck('rating');
                                                if(count($reviews)>0){
                                                    $value = 0;
                                                    $rating = 0;
                                                    foreach($reviews as $review){
                                                        $value += $review;
                                                    }
                                                    $rating = $value/count($reviews);
                                                    $total_review = count($reviews);
                                                }else{
                                                    $rating = 0;
                                                    $total_review = 0;
                                                }
                                            ?>
                                            <?php if (isset($component)) { $__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Rating::class, ['rating' => $rating]); ?>
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
                                        <div class="product_prise">
                                            <p>
                                                <?php if($related_seller_product->hasDeal): ?>
                                                    <?php echo e(single_price(selling_price($related_seller_product->skus->first()->selling_price,$related_seller_product->hasDeal->discount_type,$related_seller_product->hasDeal->discount))); ?>

                                                <?php else: ?>
                                                    <?php if($related_seller_product->hasDiscount == 'yes'): ?>
                                                        <?php echo e(single_price(selling_price(@$related_seller_product->skus->first()->selling_price,@$related_seller_product->discount_type,@$related_seller_product->discount))); ?>

                    
                                                    <?php else: ?>
                                                        <?php echo e(single_price(@$related_seller_product->skus->first()->selling_price)); ?>

                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            </p>
                                            <a class="add_cart add_to_cart addToCartFromThumnail" data-producttype="<?php echo e(@$related_seller_product->product->product_type); ?>" data-seller=<?php echo e($related_seller_product->user_id); ?> data-product-sku=<?php echo e(@$related_seller_product->skus->first()->id); ?> 
                                                <?php if(@$related_seller_product->hasDeal): ?>
                                                    data-base-price=<?php echo e(selling_price(@$related_seller_product->skus->first()->selling_price,@$related_seller_product->hasDeal->discount_type,@$related_seller_product->hasDeal->discount)); ?>

                                                <?php else: ?>
                                                    <?php if(@$related_seller_product->hasDiscount == 'yes'): ?>
                                                        data-base-price=<?php echo e(selling_price(@$related_seller_product->skus->first()->selling_price,@$related_seller_product->discount_type,@$related_seller_product->discount)); ?>

                                                    <?php else: ?>
                                                        data-base-price=<?php echo e(@$related_seller_product->skus->first()->selling_price); ?>

                                                    <?php endif; ?>
                                                <?php endif; ?>
                                                data-shipping-method=0
                                                data-product-id=<?php echo e($related_seller_product->id); ?>

                                                data-stock_manage="<?php echo e($related_seller_product->stock_manage); ?>"
                                                data-stock="<?php echo e(@$related_seller_product->skus->first()->product_stock); ?>"
                                                data-min_qty="<?php echo e(@$related_seller_product->product->minimum_order_qty); ?>"
                                                data-prod_info="<?php echo e(json_encode($showData)); ?>"
                                                ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
        <!-- sujjested_prosuct_area::end  -->
    <?php endif; ?>

    <?php if(@$product->hasDeal): ?>
        <input type="hidden" id="discount_type" value="<?php echo e(@$product->hasDeal->discount_type); ?>">
        <input type="hidden" id="discount" value="<?php echo e(@$product->hasDeal->discount); ?>">
    <?php else: ?>
        <?php if(@$product->hasDiscount == 'yes'): ?>
        <input type="hidden" id="discount_type" value="<?php echo e($product->discount_type); ?>">
        <input type="hidden" id="discount" value="<?php echo e($product->discount); ?>">
        <?php else: ?>
        <input type="hidden" id="discount_type" value="<?php echo e($product->discount_type); ?>">
        <input type="hidden" id="discount" value="0">
        <?php endif; ?>
    <?php endif; ?>

    <!--for whole sale price -->
    <?php if(isModuleActive('WholeSale')): ?>
        <input type="hidden" id="getWholesalePrice" value="<?php if(@$product->skus->first()->wholeSalePrices->count()): ?><?php echo e(json_encode(@$product->skus->first()->wholeSalePrices)); ?> <?php else: ?> 0 <?php endif; ?>">
    <?php endif; ?>

    <input type="hidden" id="isWholeSaleActive" value="<?php echo e(isModuleActive('WholeSale')); ?>">
    <input type="hidden" id="isMultiVendorActive" value="<?php echo e(isModuleActive('MultiVendor')); ?>">

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
    <script src="<?php echo e(asset(asset_path('frontend/default/js/zoom.js'))); ?>"></script>
    <script>

        (function($){
            "use strict";
            $(document).ready(function(){
                if (window.matchMedia('(min-width: 500px)').matches && $(".zoom_01").length > 0) {
                    zoom_enable();
                }else{
                    $('.varintImg').removeClass('zoom_01');
                }

                if($('#isWholeSaleActive').val() == 1 && $('#getWholesalePrice').val() != 0){
                    var getWholesalePrice = JSON.parse($('#getWholesalePrice').val());
                    if(getWholesalePrice){
                        appendWholeSaleP();
                        $('.append_w_s_p_tbl').removeClass('d-none');
                    }else {
                        $('.append_w_s_p_tbl').addClass('d-none');
                    }
                }else{
                    var getWholesalePrice = null;
                }

                function zoom_enable(){
                    $(".zoom_01").elevateZoom({
                        zoomEnabled: true,
                        zoomWindowHeight:120,
                        zoomWindowWidth:120,
                        zoomLevel:.9
                    });
                }

                both_buy_price($('#base_sku_price').val());
                function both_buy_price(product_price){
                    let both_buy_price = $('#both_buy_price').val();
                    let qty = $('.qty').val();
                    let total_product_price = parseFloat(product_price) * parseInt(qty);
                    let total = currency_format(total_product_price + parseFloat(both_buy_price));
                    $('#both_buy_price_show').text(total);
                }

                $(document).on('click', '.page_link', function(event){
                    event.preventDefault();
                    let page = $(this).attr('href').split('page=')[1];

                    fetch_data(page);

                });

                function fetch_data(page){
                    $('#pre-loader').show();

                    var url = "<?php echo e(route('frontend.product.reviews.get-data')); ?>" + '?product_id='+ "<?php echo e($product->id); ?>" +'&page=' + page;


                    if(page != 'undefined'){
                        $.ajax({
                            url: url,
                            success:function(data)
                            {
                                $('#Reviews').html(data);
                                $('#pre-loader').hide();
                            }
                        });
                    }else{
                        toastr.warning('this is undefined');
                    }

                }


                var productType = $('.product_type').val();
                if (productType == 2) {
                    '<?php if(session()->has('item_details')): ?>'+
                        '<?php $__currentLoopData = session()->get('item_details'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>'+
                            '<?php if($item['name'] === "Color"): ?>'+
                                '<?php $__currentLoopData = $item['value']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k => $value_name): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>'+
                                    $(".colors_<?php echo e($k); ?>").css("background", "<?php echo e($item['code'][$k]); ?>");
                                '<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>'+
                            '<?php endif; ?>'+
                        '<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>'+
                    '<?php endif; ?>'
                }


                $(document).on('click', '.attr_val_name', function(){

                    $(this).parent().parent().find('.attr_value_name').val($(this).attr('data-value')+'-'+$(this).attr('data-value-key'));
                    $(this).parent().parent().find('.attr_value_id').val($(this).attr('data-value')+'-'+$(this).attr('data-value-key'));

                    if ($(this).attr('color') == "color") {
                        $('.attr_clr').removeClass('selected_btn');
                    }
                    if ($(this).attr('color') == "not") {
                        $('.not_111').removeClass('selected_btn');
                    }
                    $(this).addClass('selected_btn');
                    get_price_accordint_to_sku();

                });

                var old_html = $("#myTabContent").html();
                $('.var_img_sources').hover(function() {
                    var logo = $(this).attr("src"); // get logo from data-icon parameter
                    $('.varintImg').attr("src", logo); // change logo
                }, function() {
                    $("#myTabContent").html(old_html); // remove logo
                    $('.slider-nav').slick('refresh');
                    if($(".zoom_01").length > 0){
                        zoom_enable();
                    }
                });


                $(document).on('click', '.add_to_cart_btn', function(event){
                    event.preventDefault();
                    var showData = {
                        'name' : "<?php echo e(@$product->product_name); ?>",
                        'url' : "<?php echo e(singleProductURL(@$product->seller->slug, @$product->slug)); ?>",
                        'price' : currency_format($('#final_price').val()),
                        'thumbnail' : $('#thumb_image').val()
                    };
                    addToCart($('#product_sku_id').val(),$('#seller_id').val(),$('#qty').data('value'),$('#base_sku_price').val(),$('#shipping_type').val(),'product',showData);

                });

                $(document).on('click', '#both_buy_btn', function (event){
                    event.preventDefault();
                    let product_sku_id = $(this).data('sku_id');
                    let product_id = $(this).data('product_id');
                    let qty = $(this).data('qty');
                    let seller_id = $(this).data('seller_id');

                    addToCart(product_sku_id, seller_id, qty, $('#both_buy_price').val(), '0', 'product');
                    addToCart($('#product_sku_id').val(),$('#seller_id').val(),$('#qty').data('value'),$('#base_sku_price').val(),$('#shipping_type').val(),'product');
                });

                $(document).on('click', '#wishlist_btn', function(event){
                    event.preventDefault();
                    let product_id = $(this).data('product_id');
                    let seller_id = $(this).data('seller_id');
                    let type = "product";
                    let is_login = $('#login_check').val();
                    if(is_login == 1){
                        addToWishlist(product_id, seller_id, type);
                    }else{
                        toastr.warning("<?php echo e(__('defaultTheme.please_login_first')); ?>","<?php echo e(__('common.warning')); ?>");
                    }

                });


                $(document).on('click', '#add_to_compare_btn', function(event){
                    event.preventDefault();
                    let product_sku_class = $(this).data('product_sku_id');
                    let product_sku_id = $(product_sku_class).val();
                    let product_type = $(this).data('product_type');
                    addToCompare(product_sku_id, product_type, 'product');
                });

                $(document).on('click', '.qtyChange', function(event){
                    event.preventDefault();
                    let value = $(this).data('value');
                    qtyChange(value);
                });

                function qtyChange(val){
                    $('.cart-qty-minus').prop('disabled',false);
                    let available_stock = $('#availability').html();
                    let stock_manage_status = $('#stock_manage_status').val();
                    let maximum_order_qty = $('#maximum_order_qty').val();
                    let minimum_order_qty = $('#minimum_order_qty').val();
                    let qty = $('#qty').data('value');
                    console.log(qty);
                    if (stock_manage_status != 0) {

                        if(val == '+'){
                            if (parseInt(qty) < parseInt(available_stock)) {
                                if(maximum_order_qty != ''){
                                    if(parseInt(qty) < parseInt(maximum_order_qty)){
                                    let qty1 = parseInt(++qty);
                                    $('#qty').val(numbertrans(qty1));
                                    $('#qty').data('value',qty1);
                                    totalValue(qty1, '#base_price','#total_price', getWholesalePrice);
                                    }else{
                                        toastr.warning('<?php echo e(__("defaultTheme.maximum_quantity_limit_is")); ?>'+maximum_order_qty+'.', '<?php echo e(__("common.warning")); ?>');
                                    }
                                }else{
                                    let qty1 = parseInt(++qty);
                                    $('#qty').val(numbertrans(qty1));
                                    $('#qty').data('value',qty1);
                                    totalValue(qty1, '#base_price','#total_price', getWholesalePrice);
                                }
                            }else{
                                toastr.error("<?php echo e(__('defaultTheme.no_more_stock')); ?>", "<?php echo e(__('common.error')); ?>");
                            }

                        }
                        if(val == '-'){
                            if (parseInt(qty) <= parseInt(available_stock)) {
                                if(minimum_order_qty != ''){
                                    if(parseInt(qty) > parseInt(minimum_order_qty)){
                                        if(qty>1){
                                            let qty1 = parseInt(--qty)
                                            $('#qty').val(numbertrans(qty1));
                                            $('#qty').data('value',qty1);
                                            totalValue(qty1, '#base_price','#total_price', getWholesalePrice)
                                            $('.cart-qty-minus').prop('disabled',false);
                                        }else{
                                            $('.cart-qty-minus').prop('disabled',true);
                                        }
                                    }else{
                                        toastr.warning('<?php echo e(__("defaultTheme.minimum_quantity_Limit_is")); ?>'+minimum_order_qty+'.', '<?php echo e(__("common.warning")); ?>')
                                    }
                                }else{
                                    if(parseInt(qty)>1){
                                        let qty1 = parseInt(--qty)
                                        $('#qty').val(numbertrans(qty1));
                                        $('#qty').data('value',qty1);
                                        totalValue(qty1, '#base_price','#total_price', getWholesalePrice)
                                        $('.cart-qty-minus').prop('disabled',false);
                                    }else{
                                        $('.cart-qty-minus').prop('disabled',true);
                                    }
                                }
                            }else{
                                toastr.error("<?php echo e(__('defaultTheme.no_more_stock')); ?>", "<?php echo e(__('common.error')); ?>");
                            }
                        }

                    }
                    else {
                        if(val == '+'){
                            if(maximum_order_qty != ''){
                                if(parseInt(qty) < parseInt(maximum_order_qty)){
                                let qty1 = parseInt(++qty);
                                $('#qty').val(numbertrans(qty1));
                                $('#qty').data('value',qty1);
                                totalValue(qty1, '#base_price','#total_price', getWholesalePrice);
                                }else{
                                    toastr.warning('<?php echo e(__("defaultTheme.maximum_quantity_limit_is")); ?>'+maximum_order_qty+'.', '<?php echo e(__("common.warning")); ?>')
                                }
                            }else{
                                let qty1 = parseInt(++qty);
                                $('#qty').val(numbertrans(qty1));
                                $('#qty').data('value',qty1);
                                totalValue(qty1, '#base_price','#total_price', getWholesalePrice);
                            }


                        }
                        if(val == '-'){
                            if(minimum_order_qty != ''){
                                if(parseInt(qty) > parseInt(minimum_order_qty)){
                                    if(qty>1){
                                        let qty1 = parseInt(--qty)
                                        $('#qty').val(numbertrans(qty1));
                                        $('#qty').data('value',qty1);
                                        totalValue(qty1, '#base_price','#total_price', getWholesalePrice)
                                        $('.cart-qty-minus').prop('disabled',false);
                                    }else{
                                        $('.cart-qty-minus').prop('disabled',true);
                                    }
                                }else{
                                    toastr.warning('<?php echo e(__("defaultTheme.minimum_quantity_Limit_is")); ?>'+minimum_order_qty+'.', '<?php echo e(__("common.warning")); ?>')
                                }
                            }else{
                                if(parseInt(qty)>1){
                                    let qty1 = parseInt(--qty)
                                    $('#qty').val(numbertrans(qty1));
                                    $('#qty').data('value',qty1);
                                    totalValue(qty1, '#base_price','#total_price', getWholesalePrice)
                                    $('.cart-qty-minus').prop('disabled',false);
                                }else{
                                    $('.cart-qty-minus').prop('disabled',true);
                                }
                            }
                        }
                    }

                }

                function totalValue(qty, main_price, total_price, getWholesalePrice){
                    if($('#isWholeSaleActive').val() == 1 && getWholesalePrice != null){
                        var max_qty='',min_qty='',selling_price='';
                        for (let i = 0; i < getWholesalePrice.length; ++i) {
                            max_qty = getWholesalePrice[i].max_qty;
                            min_qty = getWholesalePrice[i].min_qty;
                            selling_price = getWholesalePrice[i].selling_price;

                            if ( (min_qty<=qty) && (max_qty>=qty) ){
                                main_price = selling_price;
                            }
                            else if(max_qty < qty){
                                main_price = selling_price;
                            }
                            else if(main_price=='#base_price'){
                                var main_price = $('#base_sku_price').val();
                            }
                        }
                        let discount = $('#discount').val();
                        let discount_type = $('#discount_type').val();
                        if (discount_type == 0) {
                            discount = (main_price * discount) / 100;
                        }
                        var base_sku_price = (main_price - discount);
                    }else {
                        var base_sku_price = $('#base_sku_price').val();
                    }
                    let value = parseInt(qty) * parseFloat(base_sku_price);
                    $(total_price).html(currency_format(value));

                    both_buy_price(base_sku_price);
                    $('#final_price').val(value);
                }

                function get_price_accordint_to_sku(){
                    var value = $("input[name='attr_val_name[]']").map(function(){return $(this).val();}).get();
                    var id = $("input[name='attr_val_id[]']").map(function(){return $(this).val();}).get();
                    var product_id = $("#product_id").val();
                    var user_id = $('#seller_id').val();
                    $('#pre-loader').show();
                    $.post("<?php echo e(route('seller.get_seller_product_sku_wise_price')); ?>", {_token:'<?php echo e(csrf_token()); ?>', id:id, product_id:product_id, user_id:user_id}, function(response){

                        if (response != 0) {
                            let discount_type = $('#discount_type').val();
                            let discount = $('#discount').val();
                            let qty = $('.qty').val();

                            if(response.data.whole_sale_prices){
                                getWholesalePrice = response.data.whole_sale_prices;
                                if(getWholesalePrice){
                                    appendWholeSaleP();
                                    $('.append_w_s_p_tbl').removeClass('d-none');
                                }else {
                                    $('.append_w_s_p_tbl').addClass('d-none');
                                }
                            }

                            calculatePrice(response.data.selling_price, discount, discount_type, qty);
                            $('#sku_id_li').text(response.data.sku.sku);
                            $('#product_sku_id').val(response.data.id);
                            $('#availability').html(response.data.product_stock);

                            if(response.data.product.stock_manage == 1 && parseInt(response.data.product_stock) >= parseInt(response.data.product.product.minimum_order_qty) || response.data.product.stock_manage == 0){
                                $('#add_to_cart_div').html(`
                                    <div class="col-md-6">
                                        <button type="button" id="add_to_cart_btn" class="amaz_primary_btn style2 mb_20  add_to_cart text-uppercase add_to_cart_btn flex-fill text-center w-100"><?php echo e(__('defaultTheme.add_to_cart')); ?></button>
                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" id="butItNow" class="amaz_primary_btn3 mb_20  w-100 text-center justify-content-center text-uppercase buy_now_btn" data-id="<?php echo e($product->id); ?>" data-type="product"><?php echo e(__('common.buy_now')); ?></button>
                                    </div>
                                `);
                                $('#stock_div').html(`<span class="stoke_badge">In stock</span>`);
                                if($('#isMultiVendorActive').val() == 1){
                                    $('#cart_footer_mobile').html(`
                                        <a href="
                                            <?php if($product->seller->slug): ?>
                                                <?php echo e(route('frontend.seller',$product->seller->slug)); ?>

                                            <?php else: ?>
                                                <?php echo e(route('frontend.seller',base64_encode($product->seller->id))); ?>

                                            <?php endif; ?>
                                        " class="d-flex flex-column justify-content-center product_details_icon">
                                            <i class="ti-save"></i>
                                            <span>store</span>
                                        </a>
                                        <button type="button" class="product_details_button style1 buy_now_btn" data-id="<?php echo e($product->id); ?>" data-type="product">
                                            <span><?php echo e(__('common.buy_now')); ?></span>
                                        </button>
                                        <button class="product_details_button add_to_cart_btn" type="button"><?php echo e(__('common.add_to_cart')); ?></button>
                                    `);
                                }else{
                                    if($('#isMultiVendorActive').val() == 1){
                                        $('#cart_footer_mobile').html(`
                                            <a href="
                                                <?php if($product->seller->slug): ?>
                                                    <?php echo e(route('frontend.seller',$product->seller->slug)); ?>

                                                <?php else: ?>
                                                    <?php echo e(route('frontend.seller',base64_encode($product->seller->id))); ?>

                                                <?php endif; ?>
                                            " class="d-flex flex-column justify-content-center product_details_icon">
                                                <i class="ti-save"></i>
                                                <span>store</span>
                                            </a>
                                            <button type="button" class="product_details_button style1 buy_now_btn" data-id="<?php echo e($product->id); ?>" data-type="product">
                                                <span><?php echo e(__('common.buy_now')); ?></span>
                                            </button>
                                            <button class="product_details_button add_to_cart_btn" type="button"><?php echo e(__('common.add_to_cart')); ?></button>
                                        `);
                                    }else{
                                        $('#cart_footer_mobile').html(`
                                            <button type="button" class="product_details_button style1 buy_now_btn" data-id="<?php echo e($product->id); ?>" data-type="product">
                                                <span><?php echo e(__('common.buy_now')); ?></span>
                                            </button>
                                            <button class="product_details_button add_to_cart_btn" type="button"><?php echo e(__('common.add_to_cart')); ?></button>
                                        `);
                                    }
                                }
                            }

                            else{
                                $('#add_to_cart_div').html(`
                                    <div class="col-md-6">
                                        <button type="button" disabled class="amaz_primary_btn style2 mb_20 add_to_cart text-uppercase flex-fill text-center w-100"><?php echo e(__('defaultTheme.out_of_stock')); ?></button>
                                    </div>
                                `);
                                $('#stock_div').html(`<span class="stokeout_badge"><?php echo e(__('defaultTheme.out_of_stock')); ?></span>`);
                                toastr.warning("<?php echo e(__('defaultTheme.out_of_stock')); ?>");
                                $('#cart_footer_mobile').html(`
                                    <button type="button" class="product_details_button style1" disabled>
                                        <span><?php echo e(__('defaultTheme.out_of_stock')); ?></span>
                                    </button>
                                    <button type="button" class="product_details_button" disabled><?php echo e(__('defaultTheme.out_of_stock')); ?></button>
                                `);
                            }
                        }else {
                            toastr.error("<?php echo e(__('defaultTheme.no_stock_found_for_this_seller')); ?>", "<?php echo e(__('common.error')); ?>");
                        }
                        $('#pre-loader').hide();
                    });
                }

                function calculatePrice(main_price, discount, discount_type, qty){
                    var main_price = main_price;
                    var discount = discount;
                    var discount_type = discount_type;
                    var total_price = 0;
                    if($('#isWholeSaleActive').val() == 1 && getWholesalePrice != null){
                        var max_qty='',min_qty='',selling_price='';
                        for (let i = 0; i < getWholesalePrice.length; ++i) {
                            max_qty = getWholesalePrice[i].max_qty;
                            min_qty = getWholesalePrice[i].min_qty;
                            selling_price = getWholesalePrice[i].selling_price;

                            if ( (min_qty<=qty) && (max_qty>=qty) ){
                                main_price = selling_price;
                            }
                            else if(max_qty < qty){
                                main_price = selling_price;
                            }
                        }
                    }

                    if (discount_type == 0) {
                        discount = (main_price * discount) / 100;
                    }
                    total_price = (main_price - discount);

                    $('#total_price').text(numbertrans(currency_format((total_price * qty))));

                    both_buy_price((total_price));
                    //$('#base_sku_price').val(total_price);
                    $('#final_price').val(total_price);
                }

                function appendWholeSaleP(){
                    $('#append_w_s_p_all').empty();
                    $.each(getWholesalePrice, function(index, value) {
                        $('#append_w_s_p_all').append(`
                        <tr class="border-bottom">
                            <td class="text-left">
                                <span>${numbertrans(value.min_qty)}</span>
                            </td>
                            <td class="text-left">
                                <span>${numbertrans(value.max_qty)}</span>
                            </td>
                            <td class="text-left">
                                <span>${numbertrans(value.selling_price)}</span>
                            </td>
                        </tr>
                    `);
                    });
                }

                $(document).on('change', '#select_city', function(event){
                    let id = $(this).val();
                    let data = {
                        city_id : id,
                        _token : "<?php echo e(csrf_token()); ?>",
                        seller_id: "<?php echo e($product->seller->id); ?>"
                    }
                    $('#pre-loader').show();
                    $.post("<?php echo e(route('frontend.item.get_pickup_by_city')); ?>",data,function(response){
                        $('#selectPickup').empty();
                        $('#selectPickup').append(
                            `<option selected disabled data-display="Choose pickup location">Choose pickup location</option>`
                        );
                        $.each(response, function(index, pickup) {
                            $('#selectPickup').append('<option value="' + pickup
                                .id + '">' + pickup.address + '</option>');
                        });
                        $('#selectPickup').niceSelect('update');
                        $('#pre-loader').hide();
                    });
                });

                $(document).on('change', '#selectPickup', function (event){
                    getPickupInfo();
                });
                getPickupInfo();
                function getPickupInfo(){
                    let pickup_id = $('#selectPickup').val();
                    let data = {
                        pickup_id : pickup_id,
                        _token : "<?php echo e(csrf_token()); ?>",
                        seller_id: "<?php echo e($product->seller->id); ?>"
                    }
                    $('#pre-loader').show();
                    $.post("<?php echo e(route('frontend.item.get_pickup_info')); ?>",data,function(response){
                        if(response.shipping.cost == 0){
                            $('#door_delivery').text(`
                                ${trans('amazy.free_shipping_note')} ${response.shipping.shipment_time}.
                            `);
                        }else{
                            $('#door_delivery').text(`
                                ${trans('amazy.shipping_note')} ${currency_format(response.shipping.cost)}. ${trans('amazy.Delivery within')} ${response.shipping.shipment_time}.
                            `);
                        }
                        $('#pickup_location').text(`
                            Delivery from pickup location always free of cost. Pickup address: ${response.pickup_location.address}.
                            Counttry: ${response.pickup_location.country.name} State: ${response.pickup_location.state.name} City: ${response.pickup_location.city.name} Post code: ${response.pickup_location.pin_code}
                        `);
                        $('#pre-loader').hide();
                    });
                }
                $(document).on("click", ".buy_now_btn", function(event){
                    event.preventDefault();
                    buyNow($('#product_sku_id').val(),$('#seller_id').val(),$('#qty').val(),$('#base_sku_price').val(),$('#shipping_type').val(),'product', $('#owner').val());
                });
                $(document).on("click","#follow_seller_btn" ,function(event){
                    event.preventDefault();
                    let id = $('#seller_id').val();
                    let data = {
                        seller_id: id,
                        _token : "<?php echo e(csrf_token()); ?>"
                    }
                    $('#pre-loader').show();
                    $(this).prop("disabled",true);
                    $.post("<?php echo e(route('frontend.follow_seller')); ?>",data,function(response){
                        if(response.message == 'success'){
                            toastr.success("<?php echo e(__('amazy.Followed Successfully')); ?>","<?php echo e(__('common.success')); ?>");
                            $('#follow_seller_btn').text("<?php echo e(__('amazy.Followed')); ?>");
                        }
                        else{
                            $(this).prop("disabled",false);
                            toastr.error("<?php echo e(__('amazy.Not Followed')); ?>","<?php echo e(__('common.error')); ?>");
                        }
                        $('#pre-loader').hide();
                    });  
                });
                
            });
        })(jQuery);
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make(theme('partials.add_to_cart_script'), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make(theme('partials.add_to_compare_script'), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('frontend.amazy.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/pages/product_details.blade.php ENDPATH**/ ?>