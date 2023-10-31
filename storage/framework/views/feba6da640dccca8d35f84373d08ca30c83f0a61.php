
<?php $__env->startPush('styles'); ?>
<style>
    .recomanded_discount span{
        margin-left:-20px;
    }
    body{
        background-color: #e96805 !important;
    }
    #best_deals .product_widget5 .product__meta .product_prise .add_cart{
        top: 55%;
    }
</style>
    
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <!-- home_banner::start  -->
    <?php
        $headers = \Modules\Appearance\Entities\Header::all();
    ?>
    <?php if (isset($component)) { $__componentOriginalf33c4c6f44ba5e36a965106ef9512a2bb86eb729 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\SliderComponent::class, ['headers' => $headers]); ?>
<?php $component->withName('slider-component'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginalf33c4c6f44ba5e36a965106ef9512a2bb86eb729)): ?>
<?php $component = $__componentOriginalf33c4c6f44ba5e36a965106ef9512a2bb86eb729; ?>
<?php unset($__componentOriginalf33c4c6f44ba5e36a965106ef9512a2bb86eb729); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
    <?php if (isset($component)) { $__componentOriginala40a272aca601fe439f85bb09b367612f3d6d10f = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\TopBrandComponent::class, []); ?>
<?php $component->withName('top-brand-component'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['class' => 'bg-light']); ?>
<?php if (isset($__componentOriginala40a272aca601fe439f85bb09b367612f3d6d10f)): ?>
<?php $component = $__componentOriginala40a272aca601fe439f85bb09b367612f3d6d10f; ?>
<?php unset($__componentOriginala40a272aca601fe439f85bb09b367612f3d6d10f); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<!-- home_banner::end  -->
<?php
    $best_deal = $widgets->where('section_name','best_deals')->first();
?>
<div id="best_deals" style="width: 80%; margin-left: 50%; transform:translateX(-50%); background: whitesmoke; border-radius: 5px;" class="amaz_section section_spacing <?php echo e($best_deal->status == 0?'d-none':''); ?> mb-4">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section__title d-flex align-items-center gap-3 mb_30 flex-wrap mt-2">
                    <h3 id="best_deals_title" class="m-0 flex-fill"><?php echo e($best_deal->title); ?></h3>
                    <a href="<?php echo e(route('frontend.category-product',['slug' =>  ($best_deal->section_name), 'item' =>'product'])); ?>" class="title_link d-flex align-items-center lh-1">
                        <span class="title_text"><?php echo e(__('common.view_all')); ?></span>
                        <span class="title_icon">
                            <i class="fas fa-chevron-right"></i>
                        </span>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="trending_product_active owl-carousel">
                    <?php $__currentLoopData = $best_deal->getProductByQuery(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="product_widget5 mb_30 style2 deals-product" style="margin-right: 15px; padding-top: 0!important;">
                            <?php
                                if(@$product->thum_img != null){
                                    $thumbnail = showImage(@$product->thum_img);
                                }else {
                                    $thumbnail = showImage(@$product->product->thumbnail_image_source);
                                }

                                $price_qty = getProductDiscountedPrice(@$product);
                                $showData = [
                                    'name' => @$product->product->product_name,
                                    'url' => singleProductURL(@$product->seller->slug, @$product->slug),
                                    'price' => $price_qty,
                                    'thumbnail' => $thumbnail
                                ];
                            ?>
                            <div class="product_thumb_upper">
                                <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>" class="thumb">
                                    <img data-src="<?php echo e($thumbnail); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" class="lazyload" alt="<?php echo e(@$product->product_name); ?>" title="<?php echo e(@$product->product_name); ?>">
                                </a>
                                <div class="product_action">
                                    <a href="javascript:void(0)" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> data-product-id=<?php echo e($product->id); ?>>
                                        <i class="ti-control-shuffle"></i>
                                    </a>
                                    <a href="javascript:void(0)" class="add_to_wishlist <?php echo e($product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-seller_id="<?php echo e($product->user_id); ?>">
                                        <i class="ti-heart"></i>
                                    </a>
                                    <a href="javascript:void(0)" class="quickView" data-product_id="<?php echo e($product->id); ?>" data-type="product">
                                        <i class="ti-eye"></i>
                                    </a>
                                </div>
                                <?php if($product->hasDeal): ?>
                                    <?php if($product->hasDeal->discount >0): ?>
                                        <span class="badge_1">
                                            <?php if($product->hasDeal->discount_type ==0): ?>
                                                <?php echo e(getNumberTranslate($product->hasDeal->discount)); ?> % <?php echo e(__('common.off')); ?>

                                            <?php else: ?>
                                                <?php echo e(single_price($product->hasDeal->discount)); ?> <?php echo e(__('common.off')); ?>

                                            <?php endif; ?>
                                        </span>
                                    <?php endif; ?>
                                <?php else: ?>
                                    <?php if($product->hasDiscount == 'yes'): ?>
                                        <?php if($product->discount >0): ?>
                                            <span class="badge_1">
                                                <?php if($product->discount_type ==0): ?>
                                                    <?php echo e(getNumberTranslate($product->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                <?php else: ?>
                                                    <?php echo e(single_price($product->discount)); ?> <?php echo e(__('common.off')); ?>

                                                <?php endif; ?>
                                            </span>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </div>
                            <div class="product__meta">
                                <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>">
                                    <h4><?php if($product->product_name != null): ?> <?php echo e(textLimit(@$product->product_name, 44)); ?> <?php else: ?> <?php echo e(textLimit(@$product->product->product_name, 44)); ?> <?php endif; ?></h4>
                                </a>
                                <span class="product_banding "><?php echo e($product->brand->name ?? __('generic')); ?></span>
                                <div class="stars">
                                    <?php
                                        $reviews = @$product->reviews->where('status',1)->pluck('rating');
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
                                        <span>
                                            <?php if(getProductwitoutDiscountPrice(@$product) != single_price(0)): ?>
                                                <?php echo e(getProductwitoutDiscountPrice(@$product)); ?>

                                            <?php endif; ?>
                                        </span><br>
                                        <?php echo e(getProductDiscountedPrice($product)); ?>

                                    </p>
                                    <a class="add_cart add_to_cart addToCartFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> 
                                        <?php if(@$product->hasDeal): ?>
                                            data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount)); ?> 
                                        <?php else: ?>
                                        <?php if(@$product->hasDiscount == 'yes'): ?>
                                            data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount)); ?> 
                                        <?php else: ?>
                                            data-base-price=<?php echo e(@$product->skus->first()->selling_price); ?> 
                                        <?php endif; ?>
                                        <?php endif; ?>
                                        data-shipping-method=0 
                                        data-product-id=<?php echo e($product->id); ?> 
                                        data-stock_manage="<?php echo e($product->stock_manage); ?>" 
                                        data-stock="<?php echo e(@$product->skus->first()->product_stock); ?>" 
                                        data-min_qty="<?php echo e($product->product->minimum_order_qty); ?>" 
                                        data-prod_info= "<?php echo e(json_encode($showData)); ?>" 
                                        ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- amaz_section::start  -->
<?php
    $feature_categories = $widgets->where('section_name','feature_categories')->first();
?>
<div id="feature_categories" style="width: 80%; margin-left: 50%; transform:translateX(-50%); background: whitesmoke; border-radius: 5px;" class="amaz_section <?php echo e($feature_categories->status == 0?'d-none':''); ?> mb-4">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section__title d-flex align-items-center gap-3 mb_30 flex-wrap ">
                    <h3 id="feature_categories_title" class="m-0 flex-fill"><?php echo e($feature_categories->title); ?></h3>
                    <a href="<?php echo e(url('/category')); ?>" class="title_link d-flex align-items-center lh-1">
                        <span class="title_text"><?php echo e(__('common.view_all')); ?></span>
                        <span class="title_icon">
                            <i class="fas fa-chevron-right"></i>
                        </span>
                    </a>
                </div>
            </div>
        </div>
        <div class="row" style="flex-wrap: nowrap">
            <?php $__currentLoopData = $feature_categories->getCategoryByQuery(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-xl-4 col-lg-4 col-md-6 mb-3" style="width: fit-content!important;">
                    <div class="amaz_home_cartBox amaz_cat_bg1 d-flex justify-content-between">
                        <div class="img_box">
                            <img class="lazyload" src="<?php echo e(showImage(themeDefaultImg())); ?>" data-src="<?php echo e(showImage(@$category->categoryImage->image?@$category->categoryImage->image:'frontend/default/img/default_category.png')); ?>" alt="<?php echo e(@$category->name); ?>" title="<?php echo e(@$category->name); ?>">
                        </div>
                        <div class="amazcat_text_box">
                            <h4>
                                <a><?php echo e(textLimit($category->name,25)); ?></a>
                            </h4>
                            <p class="lh-1"><?php echo e(getNumberTranslate($category->sellerProducts->count())); ?> <?php echo e(__('common.products')); ?></p>
                            <a class="shop_now_text" href="<?php echo e(route('frontend.category-product',['slug' => $category->slug, 'item' =>'category'])); ?>"><?php echo e(__('common.shop_now')); ?> »</a>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div>
<!-- amaz_section::end  -->
<!-- new  -->
<!-- new  -->
<!-- amaz_section::start  -->
<?php
    $filter_category = $widgets->where('section_name','filter_category')->first();
    $category = @$filter_category->customSection->category;
?>

<div id="filter_category" class="amaz_section section_spacing2 <?php echo e($filter_category->status == 0?'d-none':''); ?> pt-0">
    <div class="container">
        <?php if($category): ?>
            <div class="row no-gutters" style="background: whitesmoke; border-radius: 5px;">
                <div class="col-xl-5 p-0 col-lg-12">
                    <div class="House_Appliances_widget">
                        <div class="House_Appliances_widget_left d-flex flex-column flex-fill">
                            <h4 id="filter_category_title"><?php echo e($filter_category->title); ?></h4>
                            <ul class="nav nav-tabs flex-fill flex-column border-0" id="myTab10" role="tablist">
                                <?php $__currentLoopData = @$category->subCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $subcat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link <?php echo e($key == 0?'active':''); ?>" id="tab_link_<?php echo e($subcat->id); ?>" data-bs-toggle="tab" data-bs-target="#tab_pane_subcat_<?php echo e($subcat->id); ?>" type="button" role="tab" aria-controls="Dining" aria-selected="true"><?php echo e($subcat->name); ?></button>
                                </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                            <a href="<?php echo e(route('frontend.category-product',['slug' => $category->slug, 'item' =>'category'])); ?>" class="title_link d-flex align-items-center lh-1">
                                <span class="title_text"><?php echo e(__('common.more_deals')); ?></span>
                                <span class="title_icon">
                                    <i class="fas fa-chevron-right"></i>
                                </span>
                            </a>
                        </div>
                        <a href="<?php echo e(route('frontend.category-product',['slug' => $category->slug, 'item' =>'category'])); ?>" class="House_Appliances_widget_right overflow-hidden p-0 <?php echo e($filter_category->customSection->field_2?'':'d-none'); ?>">
                            <img class="h-100 lazyload" data-src="<?php echo e(showImage($filter_category->customSection->field_2)); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" alt="<?php echo e(@$filter_category->title); ?>" title="<?php echo e(@$filter_category->title); ?>">
                        </a>
                    </div>
                </div>
                <div class="col-xl-7 p-0 col-lg-12" style="width: 80%; margin-left: 50%; transform:translateX(-50%);">
                    <div class="tab-content" id="myTabContent10">
                        <?php if($category->subCategories->count()): ?>
                            <?php $__currentLoopData = $category->subCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $subcat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="tab-pane fade <?php echo e($key == 0?'show active':''); ?>" id="tab_pane_subcat_<?php echo e($subcat->id); ?>" role="tabpanel" aria-labelledby="Dining-tab">
                                    <!-- content  -->
                                    <div class="House_Appliances_product">
                                        <?php $__currentLoopData = $subcat->sellerProductTake(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div class="product_widget5 style4 ">
                                                <div class="product_thumb_upper">
                                                    <?php
                                                        if(@$product->thum_img != null){
                                                            $thumbnail = showImage(@$product->thum_img);
                                                        }else {
                                                            $thumbnail = showImage(@$product->product->thumbnail_image_source);
                                                        }

                                                        $price_qty = getProductDiscountedPrice(@$product);
                                                        $showData = [
                                                            'name' => @$product->product->product_name,
                                                            'url' => singleProductURL(@$product->product->seller->slug, @$product->product->slug),
                                                            'price' => $price_qty,
                                                            'thumbnail' => $thumbnail
                                                        ];
                                                    ?>
                                                    <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>" class="thumb">
                                                        <img data-src="<?php echo e($thumbnail); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" class="lazyload" alt="<?php echo e(@$product->product_name); ?>" title="<?php echo e(@$product->product_name); ?>">
                                                    </a>
                                                    <div class="product_action">
                                                        <a href="javascript:void(0)" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> data-product-id=<?php echo e($product->id); ?>>
                                                            <i class="ti-control-shuffle"></i>
                                                        </a>
                                                        <a href="javascript:void(0)" class="add_to_wishlist <?php echo e($product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-seller_id="<?php echo e($product->user_id); ?>">
                                                            <i class="ti-heart"></i>
                                                        </a>
                                                        <a class="quickView" data-product_id="<?php echo e($product->id); ?>" data-type="product">
                                                            <i class="ti-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product__meta">
                                                    <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>">
                                                        <h4><?php if($product->product_name): ?> <?php echo e(textLimit(@$product->product_name, 56)); ?> <?php else: ?> <?php echo e(textLimit(@$product->product->product_name, 56)); ?> <?php endif; ?></h4>
                                                    </a>
                                                    <span class="product_banding "><?php echo e($product->brand->name ?? __('generic')); ?></span>
                                                    <div class="stars">
                                                        <?php
                                                            $reviews = $product->reviews->where('status',1)->pluck('rating');
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
                                                            <?php if($product->hasDeal): ?>
                                                                <?php echo e(single_price(selling_price($product->skus->first()->selling_price,$product->hasDeal->discount_type,$product->hasDeal->discount))); ?>

                                                            <?php else: ?>
                                                                <?php if($product->hasDiscount == 'yes'): ?>
                                                                    <?php echo e(single_price(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount))); ?>

                                
                                                                <?php else: ?>
                                                                    <?php echo e(single_price(@$product->skus->first()->selling_price)); ?>

                                                                <?php endif; ?>
                                                            <?php endif; ?>
                                                        </p>
                                                        <a class="add_cart add_to_cart addToCartFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> 
                                                            <?php if(@$product->hasDeal): ?>
                                                                data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount)); ?>

                                                            <?php else: ?>
                                                                <?php if(@$product->hasDiscount == 'yes'): ?>
                                                                    data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount)); ?>

                                                                <?php else: ?>
                                                                    data-base-price=<?php echo e(@$product->skus->first()->selling_price); ?>

                                                                <?php endif; ?>
                                                            <?php endif; ?>
                                                            data-shipping-method=0
                                                            data-product-id=<?php echo e($product->id); ?>

                                                            data-stock_manage="<?php echo e($product->stock_manage); ?>"
                                                            data-stock="<?php echo e(@$product->skus->first()->product_stock); ?>"
                                                            data-min_qty="<?php echo e($product->product->minimum_order_qty); ?>"
                                                            data-prod_info="<?php echo e(json_encode($showData)); ?>"
                                                            ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div>
                                    <!-- content  -->
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php else: ?>
                            <div class="tab-pane fade show active" id="tab_pane_subcat_1" role="tabpanel" aria-labelledby="Dining-tab">
                                <!-- content  -->
                                <div class="House_Appliances_product">
                                    <?php $__currentLoopData = $category->sellerProductTake(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <div class="product_widget5 style4">
                                            <div class="product_thumb_upper">
                                                <?php
                                                    if(@$product->thum_img != null){
                                                        $thumbnail = showImage(@$product->thum_img);
                                                    }else {
                                                        $thumbnail = showImage(@$product->product->thumbnail_image_source);
                                                    }

                                                    $price_qty = getProductDiscountedPrice(@$product);
                                                    $showData = [
                                                        'name' => @$product->product->product_name,
                                                        'url' => singleProductURL(@$product->seller->slug, @$product->slug),
                                                        'price' => $price_qty,
                                                        'thumbnail' => $thumbnail
                                                    ];
                                                ?>
                                                <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>" class="thumb">
                                                    <img data-src="<?php echo e($thumbnail); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" class="lazyload" alt="<?php echo e(@$product->product_name); ?>" title="<?php echo e(@$product->product_name); ?>">
                                                </a>
                                                <div class="product_action">
                                                    <a href="javascript:void(0)" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> data-product-id=<?php echo e($product->id); ?>>
                                                        <i class="ti-control-shuffle"></i>
                                                    </a>
                                                    <a href="javascript:void(0)" class="add_to_wishlist <?php echo e($product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-seller_id="<?php echo e($product->user_id); ?>">
                                                        <i class="ti-heart"></i>
                                                    </a>
                                                    <a class="quickView" data-product_id="<?php echo e($product->id); ?>" data-type="product">
                                                        <i class="ti-eye"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product__meta">
                                                <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>">
                                                    <h4><?php if($product->product_name): ?> <?php echo e(textLimit(@$product->product_name, 56)); ?> <?php else: ?> <?php echo e(textLimit(@$product->product->product_name, 56)); ?> <?php endif; ?></h4>
                                                </a>
                                                <span class="product_banding "><?php echo e($product->brand->name ?? __('generic')); ?></span>
                                                <div class="stars">
                                                    <?php
                                                        $reviews = $product->reviews->where('status',1)->pluck('rating');
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
                                                        <?php if($product->hasDeal): ?>
                                                            <?php echo e(single_price(selling_price($product->skus->first()->selling_price,$product->hasDeal->discount_type,$product->hasDeal->discount))); ?>

                                                        <?php else: ?>
                                                            <?php if($product->hasDiscount == 'yes'): ?>
                                                                <?php echo e(single_price(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount))); ?>

                            
                                                            <?php else: ?>
                                                                <?php echo e(single_price(@$product->skus->first()->selling_price)); ?>

                                                            <?php endif; ?>
                                                        <?php endif; ?>
                                                    </p>
                                                    <a class="add_cart add_to_cart addToCartFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> 
                                                        <?php if(@$product->hasDeal): ?>
                                                            data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount)); ?>

                                                        <?php else: ?>
                                                            <?php if(@$product->hasDiscount == 'yes'): ?>
                                                                data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount)); ?>

                                                            <?php else: ?>
                                                                data-base-price=<?php echo e(@$product->skus->first()->selling_price); ?>

                                                            <?php endif; ?>
                                                        <?php endif; ?>
                                                        data-shipping-method=0
                                                        data-product-id=<?php echo e($product->id); ?>

                                                        data-stock_manage="<?php echo e($product->stock_manage); ?>"
                                                        data-stock="<?php echo e(@$product->skus->first()->product_stock); ?>"
                                                        data-min_qty="<?php echo e($product->product->minimum_order_qty); ?>"
                                                        data-prod_info="<?php echo e(json_encode($showData)); ?>"
                                                        ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                                </div>
                                            </div>
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                                <!-- content  -->
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    </div>
</div>

<!-- amaz_section::end  -->

<!-- cta::start  -->
<div class="amaz_section" style="width: 80%; margin-left: 50%; transform:translateX(-50%); padding:0!important; margin-right:0!important;">
    <div class="container" style="min-width:100%!important; margin:0!important; padding:0!important;">
        <div class="row">
            <div class="col-xl-12">
                <?php if (isset($component)) { $__componentOriginaled9285b3d5c819580b726bad7c062ff7fa5b8475 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\RandomAdsComponent::class, []); ?>
<?php $component->withName('random-ads-component'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginaled9285b3d5c819580b726bad7c062ff7fa5b8475)): ?>
<?php $component = $__componentOriginaled9285b3d5c819580b726bad7c062ff7fa5b8475; ?>
<?php unset($__componentOriginaled9285b3d5c819580b726bad7c062ff7fa5b8475); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
            </div>
        </div>
    </div>
</div>
<!-- cta::end  -->

<?php
    $top_rating = $widgets->where('section_name','top_rating')->first();
    $peoples_choice = $widgets->where('section_name','people_choices')->first();
    $top_picks = $widgets->where('section_name','top_picks')->first();
?>
<div class="amaz_section section_spacing3 pt-4 mb-4" style="width: 80%; margin-left: 50%; transform:translateX(-50%);">
    <div class="container">
        <div class="row pt-3" style="background: whitesmoke; border-radius: 5px;">
            <div class="col-12">
                <ul class="nav amzcart_tabs d-flex align-items-center justify-content-center flex-wrap " id="myTab" role="tablist">
                    <li class="nav-item " role="presentation" id="top_rating" class="<?php echo e($top_rating->status == 0?'d-none':''); ?>">
                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true"><span id="top_rating_title"><?php echo e($top_rating->title); ?></span></button>
                    </li>
                    <li class="nav-item" role="presentation" id="people_choices" class="<?php echo e($peoples_choice->status == 0?'d-none':''); ?>">
                        <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false"><span id="people_choice_title"><?php echo e($peoples_choice->title); ?></span></button>
                    </li>
                    <li class="nav-item" role="presentation" id="top_picks" class="<?php echo e($top_picks->status == 0?'d-none':''); ?>">
                        <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false"><span id="top_picks_title"><?php echo e($top_picks->title); ?></span></button>
                    </li>
                </ul>
                
            </div>
            <div class="col-xl-12">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <!-- conttent  -->
                        <div class="amaz_fieature_active fieature_crousel_area owl-carousel">
                            <?php $__currentLoopData = $top_rating->getHomePageProductByQuery(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="product_widget5 style2 mb_30">
                                    <div class="product_thumb_upper">
                                        <?php
                                            if(@$product->thum_img != null){
                                                $thumbnail = showImage(@$product->thum_img);
                                            }else {
                                                $thumbnail = showImage(@$product->product->thumbnail_image_source);
                                            }

                                            $price_qty = getProductDiscountedPrice(@$product);
                                            $showData = [
                                                'name' => @$product->product_name,
                                                'url' => singleProductURL(@$product->seller->slug, @$product->slug),
                                                'price' => $price_qty,
                                                'thumbnail' => $thumbnail
                                            ];
                                        ?>
                                        <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>" class="thumb">
                                            <img data-src="<?php echo e($thumbnail); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" class="lazyload" alt="<?php echo e(@$product->product_name); ?>" title="<?php echo e(@$product->product_name); ?>">
                                        </a>
                                        <div class="product_action">
                                            <a href="javascript:void(0)" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> data-product-id=<?php echo e($product->id); ?>>
                                                <i class="ti-control-shuffle"></i>
                                            </a>
                                            <a href="javascript:void(0)" class="add_to_wishlist <?php echo e($product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-seller_id="<?php echo e($product->user_id); ?>">
                                                <i class="ti-heart"></i>
                                            </a>
                                            <a class="quickView" data-product_id="<?php echo e($product->id); ?>" data-type="product">
                                                <i class="ti-eye"></i>
                                            </a>
                                        </div>
                                        <?php if($product->hasDeal): ?>
                                            <?php if($product->hasDeal->discount >0): ?>
                                                <span class="badge_1">
                                                    <?php if($product->hasDeal->discount >0): ?>
                                                        <?php if($product->hasDeal->discount_type ==0): ?>
                                                            <?php echo e(getNumberTranslate($product->hasDeal->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                        <?php else: ?>
                                                            <?php echo e(single_price($product->hasDeal->discount)); ?> <?php echo e(__('common.off')); ?>

                                                        <?php endif; ?>

                                                    <?php endif; ?>
                                                </span>
                                            <?php endif; ?>
                                        <?php else: ?>
                                            <?php if($product->hasDiscount == 'yes'): ?>
                                            <?php if($product->discount > 0): ?>
                                                <span class="badge_1">
                                                    <?php if($product->discount >0): ?>
                                                        <?php if($product->discount_type ==0): ?>
                                                            <?php echo e(getNumberTranslate($product->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                        <?php else: ?>
                                                            <?php echo e(single_price($product->discount)); ?> <?php echo e(__('common.off')); ?>

                                                        <?php endif; ?>
                                                    <?php endif; ?>
                                                </span>
                                            <?php endif; ?>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    </div>
                                    <div class="product__meta">
                                        <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>">
                                            <h4 class="text-nowrap" style="font-size: 13px;"><?php if($product->product_name): ?> <?php echo e(textLimit(@$product->product_name, 35)); ?> <?php else: ?> <?php echo e(textLimit(@$product->product->product_name, 35)); ?> <?php endif; ?></h4>
                                        </a>
                                        <span class="product_banding "><?php echo e($product->brand->name ?? __('generic')); ?></span>
                                        <div class="stars">
                                            <?php
                                                $reviews = $product->reviews->where('status',1)->pluck('rating');
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
                                                <?php if($product->hasDeal): ?>
                                                    <?php echo e(single_price(selling_price($product->skus->first()->selling_price,$product->hasDeal->discount_type,$product->hasDeal->discount))); ?>

                                                <?php else: ?>
                                                    <?php if($product->hasDiscount == 'yes'): ?>
                                                        <?php echo e(single_price(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount))); ?>

                    
                                                    <?php else: ?>
                                                        <?php echo e(single_price(@$product->skus->first()->selling_price)); ?>

                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            </p>
                                            <a class="add_cart add_to_cart addToCartFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> 
                                                <?php if(@$product->hasDeal): ?>
                                                    data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount)); ?>

                                                <?php else: ?>
                                                    <?php if(@$product->hasDiscount == 'yes'): ?>
                                                        data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount)); ?>

                                                    <?php else: ?>
                                                        data-base-price=<?php echo e(@$product->skus->first()->selling_price); ?>

                                                    <?php endif; ?>
                                                <?php endif; ?>
                                                data-shipping-method=0
                                                data-product-id=<?php echo e($product->id); ?>

                                                data-stock_manage="<?php echo e($product->stock_manage); ?>"
                                                data-stock="<?php echo e(@$product->skus->first()->product_stock); ?>"
                                                data-min_qty="<?php echo e($product->product->minimum_order_qty); ?>"
                                                data-prod_info="<?php echo e(json_encode($showData)); ?>"
                                                ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                        <!-- conttent  -->
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <!-- conttent  -->
                        <div class="amaz_fieature_active fieature_crousel_area owl-carousel">
                            <?php $__currentLoopData = $peoples_choice->getHomePageProductByQuery(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="product_widget5 style2 mb_30">
                                <div class="product_thumb_upper">
                                    <?php
                                        if(@$product->thum_img != null){
                                            $thumbnail = showImage(@$product->thum_img);
                                        }else {
                                            $thumbnail = showImage(@$product->product->thumbnail_image_source);
                                        }

                                        $price_qty = getProductDiscountedPrice(@$product);
                                        $showData = [
                                            'name' => @$product->product->product_name,
                                            'url' => singleProductURL(@$product->seller->slug, @$product->slug),
                                            'price' => $price_qty,
                                            'thumbnail' => $thumbnail
                                        ];
                                    ?>
                                    <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>" class="thumb">
                                        <img data-src="<?php echo e($thumbnail); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" class="lazyload" alt="<?php echo e(@$product->product_name); ?>" title="<?php echo e(@$product->product_name); ?>">
                                    </a>
                                    <div class="product_action">
                                        <a href="javascript:void(0)" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> data-product-id=<?php echo e($product->id); ?>>
                                            <i class="ti-control-shuffle"></i>
                                        </a>
                                        <a href="javascript:void(0)" class="add_to_wishlist <?php echo e($product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-seller_id="<?php echo e($product->user_id); ?>">
                                            <i class="ti-heart"></i>
                                        </a>
                                        <a class="quickView" data-product_id="<?php echo e($product->id); ?>" data-type="product">
                                            <i class="ti-eye"></i>
                                        </a>
                                    </div>
                                    <?php if($product->hasDeal): ?>
                                        <?php if($product->hasDeal->discount >0): ?>
                                            <span class="badge_1">
                                                <?php if($product->hasDeal->discount >0): ?>
                                                    <?php if($product->hasDeal->discount_type ==0): ?>
                                                        <?php echo e(getNumberTranslate($product->hasDeal->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                    <?php else: ?>
                                                        <?php echo e(single_price($product->hasDeal->discount)); ?> <?php echo e(__('common.off')); ?>

                                                    <?php endif; ?>

                                                <?php endif; ?>
                                            </span>
                                        <?php endif; ?>
                                    <?php else: ?>
                                        <?php if($product->hasDiscount == 'yes'): ?>
                                        <?php if($product->discount > 0): ?>
                                            <span class="badge_1">
                                                <?php if($product->discount >0): ?>
                                                    <?php if($product->discount_type ==0): ?>
                                                        <?php echo e(getNumberTranslate($product->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                    <?php else: ?>
                                                        <?php echo e(single_price($product->discount)); ?> <?php echo e(__('common.off')); ?>

                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            </span>
                                        <?php endif; ?>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                </div>
                                <div class="product__meta">
                                    <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>">
                                        <h4 class="text-nowrap"><?php if($product->product_name): ?> <?php echo e(textLimit(@$product->product_name, 35)); ?> <?php else: ?> <?php echo e(textLimit(@$product->product->product_name, 35)); ?> <?php endif; ?></h4>
                                    </a>
                                    <span class="product_banding "><?php echo e($product->brand->name ?? __('generic')); ?></span>
                                    <div class="stars">
                                        <?php
                                            $reviews = $product->reviews->where('status',1)->pluck('rating');
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
                                            <?php if($product->hasDeal): ?>
                                                <?php echo e(single_price(selling_price($product->skus->first()->selling_price,$product->hasDeal->discount_type,$product->hasDeal->discount))); ?><br>
                                            <?php else: ?>
                                                <?php if($product->hasDiscount == 'yes'): ?>
                                                    <?php echo e(single_price(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount))); ?><br>
                
                                                <?php else: ?>
                                                    <?php echo e(single_price(@$product->skus->first()->selling_price)); ?><br>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        </p>
                                        <a class="add_cart add_to_cart addToCartFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> 
                                            <?php if(@$product->hasDeal): ?>
                                                data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount)); ?>

                                            <?php else: ?>
                                                <?php if(@$product->hasDiscount == 'yes'): ?>
                                                    data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount)); ?>

                                                <?php else: ?>
                                                    data-base-price=<?php echo e(@$product->skus->first()->selling_price); ?>

                                                <?php endif; ?>
                                            <?php endif; ?>
                                            data-shipping-method=0
                                            data-product-id=<?php echo e($product->id); ?>

                                            data-stock_manage="<?php echo e($product->stock_manage); ?>"
                                            data-stock="<?php echo e(@$product->skus->first()->product_stock); ?>"
                                            data-min_qty="<?php echo e($product->product->minimum_order_qty); ?>"
                                            data-prod_info="<?php echo e(json_encode($showData)); ?>"
                                            ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                    </div>
                                </div>
                            </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                        <!-- conttent  -->
                    </div>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                        <!-- conttent  -->
                        <div class="amaz_fieature_active fieature_crousel_area owl-carousel">
                            <?php $__currentLoopData = $top_picks->getHomePageProductByQuery(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="product_widget5 style2 mb_30">
                                <div class="product_thumb_upper">
                                    <?php
                                        if(@$product->thum_img != null){
                                            $thumbnail = showImage(@$product->thum_img);
                                        }else {
                                            $thumbnail = showImage(@$product->product->thumbnail_image_source);
                                        }

                                        $price_qty = getProductDiscountedPrice(@$product);
                                        $showData = [
                                            'name' => @$product->product->product_name,
                                            'url' => singleProductURL(@$product->seller->slug, @$product->slug),
                                            'price' => $price_qty,
                                            'thumbnail' => $thumbnail
                                        ];
                                    ?>
                                    <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>" class="thumb">
                                        <img data-src="<?php echo e($thumbnail); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" class="lazyload" alt="<?php echo e(@$product->product_name); ?>" title="<?php echo e(@$product->product_name); ?>">
                                    </a>
                                    <div class="product_action">
                                        <a href="javascript:void(0)" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> data-product-id=<?php echo e($product->id); ?>>
                                            <i class="ti-control-shuffle"></i>
                                        </a>
                                        <a href="javascript:void(0)" class="add_to_wishlist <?php echo e($product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-seller_id="<?php echo e($product->user_id); ?>">
                                            <i class="ti-heart"></i>
                                        </a>
                                        <a class="quickView" data-product_id="<?php echo e($product->id); ?>" data-type="product">
                                            <i class="ti-eye"></i>
                                        </a>
                                    </div>
                                    <?php if($product->hasDeal): ?>
                                        <?php if($product->hasDeal->discount >0): ?>
                                            <span class="badge_1">
                                                <?php if($product->hasDeal->discount >0): ?>
                                                    <?php if($product->hasDeal->discount_type ==0): ?>
                                                        <?php echo e(getNumberTranslate($product->hasDeal->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                    <?php else: ?>
                                                        <?php echo e(single_price($product->hasDeal->discount)); ?> <?php echo e(__('common.off')); ?>

                                                    <?php endif; ?>

                                                <?php endif; ?>
                                            </span>
                                        <?php endif; ?>
                                    <?php else: ?>
                                        <?php if($product->hasDiscount == 'yes'): ?>
                                        <?php if($product->discount > 0): ?>
                                            <span class="badge_1">
                                                <?php if($product->discount >0): ?>
                                                    <?php if($product->discount_type ==0): ?>
                                                        <?php echo e(getNumberTranslate($product->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                    <?php else: ?>
                                                        <?php echo e(single_price($product->discount)); ?> <?php echo e(__('common.off')); ?>

                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            </span>
                                        <?php endif; ?>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                </div>
                                <div class="product__meta">
                                    <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>">
                                        <h4 class="text-nowrap"><?php if($product->product_name): ?> <?php echo e(textLimit(@$product->product_name, 35)); ?> <?php else: ?> <?php echo e(textLimit(@$product->product->product_name, 35)); ?> <?php endif; ?></h4>
                                    </a>
                                    <span class="product_banding "><?php echo e($product->brand->name ?? __('generic')); ?></span>
                                    <div class="stars">
                                        <?php
                                            $reviews = $product->reviews->where('status',1)->pluck('rating');
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
                                            <?php if($product->hasDeal): ?>
                                                <?php echo e(single_price(selling_price($product->skus->first()->selling_price,$product->hasDeal->discount_type,$product->hasDeal->discount))); ?>

                                            <?php else: ?>
                                                <?php if($product->hasDiscount == 'yes'): ?>
                                                    <?php echo e(single_price(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount))); ?>

                
                                                <?php else: ?>
                                                    <?php echo e(single_price(@$product->skus->first()->selling_price)); ?>

                                                <?php endif; ?>
                                            <?php endif; ?>
                                        </p>
                                        <a class="add_cart add_to_cart addToCartFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> 
                                            <?php if(@$product->hasDeal): ?>
                                                data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount)); ?>

                                            <?php else: ?>
                                                <?php if(@$product->hasDiscount == 'yes'): ?>
                                                    data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount)); ?>

                                                <?php else: ?>
                                                    data-base-price=<?php echo e(@$product->skus->first()->selling_price); ?>

                                                <?php endif; ?>
                                            <?php endif; ?>
                                            data-shipping-method=0
                                            data-product-id=<?php echo e($product->id); ?>

                                            data-stock_manage="<?php echo e($product->stock_manage); ?>"
                                            data-stock="<?php echo e(@$product->skus->first()->product_stock); ?>"
                                            data-min_qty="<?php echo e($product->product->minimum_order_qty); ?>"
                                            data-prod_info="<?php echo e(json_encode($showData)); ?>"
                                            ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                    </div>
                                </div>
                            </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                        <!-- conttent  -->
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>

<?php
    $discount_banner = $widgets->where('section_name','discount_banner')->first();
?>
<div id="discount_banner" class="amaz_section amaz_deal_area <?php echo e($discount_banner->status == 0?'d-none':''); ?> mb-4 d-flex" style="width: 80%; margin-left: 50%; transform:translateX(-50%);">
    <div class="container pt-3 d-flex" style="background: whitesmoke; border-radius: 5px; flex-direction:row; flex-wrap:nowrap; overflow-y: hidden; overflow-x: scroll;"><div class="banner-scrollers"><button id="left"><i class="ti-angle-left"></i></button><button id="right"><i class="ti-angle-right"></i></button></div>
        <div class="col-xl-4 col-md-6 col-sm-12 col-lg-4 mb_20 single_ad <?php echo e(!@$discount_banner->customSection->field_4?'d-none':''); ?>">
            <a href="<?php echo e(@$discount_banner->customSection->field_4); ?>" class="mb_30">
                <img data-src="<?php echo e(showImage(@$discount_banner->customSection->field_1)); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" alt="<?php echo e($discount_banner->title); ?>" title="<?php echo e($discount_banner->title); ?>" class="img-fluid lazyload">
            </a>
        </div>
        <div class="col-xl-4 col-md-6 col-lg-4 col-sm-12 mb_20 single_ad <?php echo e(!@$discount_banner->customSection->field_5?'d-none':''); ?>">
            <a href="<?php echo e(@$discount_banner->customSection->field_5); ?>" class=" mb_30">
                <img data-src="<?php echo e(showImage(@$discount_banner->customSection->field_2)); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" alt="<?php echo e($discount_banner->title); ?>" title="<?php echo e($discount_banner->title); ?>" class="img-fluid lazyload">
            </a>
        </div>
        <div class="col-xl-4 col-md-6 col-lg-4 col-sm-12 mb_20 single_ad <?php echo e(!@$discount_banner->customSection->field_6?'d-none':''); ?>">
            <a href="<?php echo e(@$discount_banner->customSection->field_6); ?>" class=" mb_30">
                <img data-src="<?php echo e(showImage(@$discount_banner->customSection->field_3)); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" alt="<?php echo e($discount_banner->title); ?>" title="<?php echo e($discount_banner->title); ?>" class="img-fluid lazyload">
            </a>
        </div>
    </div>
</div>

<!-- amaz_recomanded::start  -->

<?php
    $more_products = $widgets->where('section_name','more_products')->first();
?>
<div class="amaz_recomanded_area <?php echo e($more_products->status == 0?'d-none':''); ?> mb-4">
    <div class="container" style="width: 80%; margin-left: 50%; transform:translateX(-50%); ">
        <div class="row" style="background: whitesmoke; border-radius: 5px;">
            <div class="col-12">
                <div id="more_products" class="amaz_recomanded_box">
                    <div class="amaz_recomanded_box_head">
                        <h4 class="mb-0"><?php echo e($more_products->title); ?></h4>
                    </div>
                    <div class="amaz_recomanded_box_body2 dataApp">
                        <?php $__currentLoopData = $more_products->getHomePageProductByQuery(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="product_widget5 style3 bg-white mb-2 more-products">
                                <div class="product_thumb_upper">
                                    <?php
                                        if(@$product->thum_img != null){
                                            $thumbnail = showImage(@$product->thum_img);
                                        }else {
                                            $thumbnail = showImage(@$product->product->thumbnail_image_source);
                                        }

                                        $price_qty = getProductDiscountedPrice(@$product);
                                        $showData = [
                                            'name' => @$product->product_name,
                                            'url' => singleProductURL(@$product->seller->slug, @$product->slug),
                                            'price' => $price_qty,
                                            'thumbnail' => $thumbnail
                                        ];
                                    ?>
                                    <a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>" class="thumb">
                                        <img data-src="<?php echo e($thumbnail); ?>" src="<?php echo e(showImage(themeDefaultImg())); ?>" alt="<?php echo e(@$product->product_name); ?>" title="<?php echo e(@$product->product_name); ?>" class="lazyload">
                                    </a>
                                    <div class="product_action">
                                        <a href="javascript:void(0)" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> data-product-id=<?php echo e($product->id); ?>>
                                            <i class="ti-control-shuffle"></i>
                                        </a>
                                        <a href="javascript:void(0)" class="add_to_wishlist <?php echo e($product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-seller_id="<?php echo e($product->user_id); ?>">
                                            <i class="ti-heart"></i>
                                        </a>
                                        <a class="quickView" data-product_id="<?php echo e($product->id); ?>" data-type="product">
                                            <i class="ti-eye"></i>
                                        </a>
                                    </div>
                                    <div class="recomanded_discount">
                                        <?php if($product->hasDeal): ?>
                                            <?php if($product->hasDeal->discount >0): ?>
                                                <span class="badge_1">
                                                    <?php if($product->hasDeal->discount >0): ?>
                                                        <?php if($product->hasDeal->discount_type ==0): ?>
                                                            <?php echo e(getNumberTranslate($product->hasDeal->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                        <?php else: ?>
                                                            <?php echo e(single_price($product->hasDeal->discount)); ?> <?php echo e(__('common.off')); ?>

                                                        <?php endif; ?>

                                                    <?php endif; ?>
                                                </span>
                                            <?php endif; ?>
                                        <?php else: ?>
                                            <?php if($product->hasDiscount == 'yes'): ?>
                                            <?php if($product->discount > 0): ?>
                                                <span class="badge_1">
                                                    <?php if($product->discount >0): ?>
                                                        <?php if($product->discount_type ==0): ?>
                                                            <?php echo e(getNumberTranslate($product->discount)); ?> % <?php echo e(__('common.off')); ?>

                                                        <?php else: ?>
                                                            <?php echo e(single_price($product->discount)); ?> <?php echo e(__('common.off')); ?>

                                                        <?php endif; ?>
                                                    <?php endif; ?>
                                                </span>
                                            <?php endif; ?>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    </div>
                                </div>
                                <div class="product__meta">
                                    <a href="<?php echo e(singleProductURL(@$product->seller->slug, $product->slug)); ?>">
                                        <h4><?php if($product->product_name): ?> <?php echo e(textLimit(@$product->product_name, 50)); ?> <?php else: ?> <?php echo e(textLimit(@$product->product->product_name, 50)); ?> <?php endif; ?></h4>
                                    </a>
                                    <span class="product_banding "><?php echo e(@$product->brand->name ?? __('generic')); ?></span>
                                    <div class="stars">
                                        <?php
                                            $reviews = $product->reviews->where('status',1)->pluck('rating');
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
                                            <?php if($product->hasDeal): ?>
                                                <?php echo e(single_price(selling_price($product->skus->first()->selling_price,$product->hasDeal->discount_type,$product->hasDeal->discount))); ?>

                                            <?php else: ?>
                                                <?php if($product->hasDiscount == 'yes'): ?>
                                                    <?php echo e(single_price(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount))); ?>

                
                                                <?php else: ?>
                                                    <?php echo e(single_price(@$product->skus->first()->selling_price)); ?>

                                                <?php endif; ?>
                                            <?php endif; ?>
                                        </p>
                                        <a class="add_cart add_to_cart addToCartFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> 
                                            <?php if(@$product->hasDeal): ?>
                                                data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount)); ?>

                                            <?php else: ?>
                                                <?php if(@$product->hasDiscount == 'yes'): ?>
                                                    data-base-price=<?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount)); ?>

                                                <?php else: ?>
                                                    data-base-price=<?php echo e(@$product->skus->first()->selling_price); ?>

                                                <?php endif; ?>
                                            <?php endif; ?>
                                            data-shipping-method=0
                                            data-product-id=<?php echo e($product->id); ?>

                                            data-stock_manage="<?php echo e($product->stock_manage); ?>"
                                            data-stock="<?php echo e(@$product->skus->first()->product_stock); ?>"
                                            data-min_qty="<?php echo e(@$product->product->minimum_order_qty); ?>"
                                            data-prod_info="<?php echo e(json_encode($showData)); ?>"
                                            ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            </div>
            <div class="col-12 text-center">
                <?php if($more_products->getHomePageProductByQuery()->lastPage() > 1): ?>
                <a id="loadmore" class="amaz_primary_btn2 min_200 load_more_btn_homepage"><?php echo e(__('common.load_more')); ?></a>
                <?php endif; ?>
                
                <input type="hidden" id="login_check" value="<?php if(auth()->check()): ?> 1 <?php else: ?> 0 <?php endif; ?>">
            </div>
        </div>
    </div>
</div>
<!-- amaz_recomanded::end -->

<!-- amaz_brand::start  -->

<!-- amaz_brand::end  -->

<!-- Popular Searches::start  -->
<?php if (isset($component)) { $__componentOriginal0c7c3bcc51e7d4f93330bf3491c7c72af8d69194 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\PopularSearchComponent::class, []); ?>
<?php $component->withName('popular-search-component'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginal0c7c3bcc51e7d4f93330bf3491c7c72af8d69194)): ?>
<?php $component = $__componentOriginal0c7c3bcc51e7d4f93330bf3491c7c72af8d69194; ?>
<?php unset($__componentOriginal0c7c3bcc51e7d4f93330bf3491c7c72af8d69194); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<!-- Popular Searches::end  -->
<?php echo $__env->make(theme('partials._subscription_modal'), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


<?php $__env->stopSection(); ?>
<?php echo $__env->make(theme('partials.add_to_cart_script'), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make(theme('partials.add_to_compare_script'), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('frontend.amazy.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/welcome.blade.php ENDPATH**/ ?>