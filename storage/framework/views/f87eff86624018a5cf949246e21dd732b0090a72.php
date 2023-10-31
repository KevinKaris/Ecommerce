<?php
    $total_number_of_item_per_page = $products->perPage();
    $total_number_of_items = ($products->total() > 0) ? $products->total() : 0;
    $total_number_of_pages = $total_number_of_items / $total_number_of_item_per_page;
    $reminder = $total_number_of_items % $total_number_of_item_per_page;
    if ($reminder > 0) {
        $total_number_of_pages += 1;
    }
    $current_page = $products->currentPage();
    $previous_page = $products->currentPage() - 1;
    if($current_page == $products->lastPage()){
        $show_end = $total_number_of_items;
    }else{
        $show_end = $total_number_of_item_per_page * $current_page;
    }


    $show_start = 0;
    if($total_number_of_items > 0){
        $show_start = ($total_number_of_item_per_page * $previous_page) + 1;
    }


?>
    <div class="row ">
        <div class="col-12">
            <div class="box_header d-flex flex-wrap align-items-center justify-content-between">
                <h5 class="font_16 f_w_500 mr_10 mb-0"><?php echo e(__('defaultTheme.showing')); ?> <?php if($show_start == $show_end): ?> <?php echo e(getNumberTranslate($show_end)); ?> <?php else: ?> <?php echo e(getNumberTranslate($show_start)); ?> - <?php echo e(getNumberTranslate($show_end)); ?> <?php endif; ?> <?php echo e(__('defaultTheme.out_of_total')); ?> <?php echo e(getNumberTranslate($total_number_of_items)); ?> <?php echo e(__('common.products')); ?></h5>
                <div class="box_header_right ">
                    <div class="short_select d-flex align-items-center gap_10 flex-wrap">
                        <div class="prduct_showing_style">
                            <ul class="nav align-items-center" id="myTab" role="tablist">
                                <li class="nav-item lh-1">
                                    <a class="nav-link view-product active" id="home-tab" data-bs-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">
                                        <img src="<?php echo e(showImage('frontend/amazy/img/svg/grid_view.svg')); ?>" alt="Gird View" title="Gird View">
                                    </a>
                                </li>
                                <li class="nav-item lh-1">
                                    <a class="nav-link view-product" id="profile-tab" data-bs-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">
                                        <img src="<?php echo e(showImage('frontend/amazy/img/svg/list_view.svg')); ?>" alt="List View" title="List View">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="shorting_box">
                            <select name="paginate_by" class="amaz_select getFilterUpdateByIndex" id="paginate_by">
                                <option value="9" <?php if(isset($paginate) && $paginate == "9"): ?> selected <?php endif; ?>><?php echo e(__('common.show')); ?> <?php echo e(getNumberTranslate(9)); ?> <?php echo e(__('common.item’s')); ?></option>
                                <option value="12" <?php if(isset($paginate) && $paginate == "12"): ?> selected <?php endif; ?>><?php echo e(__('common.show')); ?> <?php echo e(getNumberTranslate(12)); ?> <?php echo e(__('common.item’s')); ?></option>
                                <option value="16" <?php if(isset($paginate) && $paginate == "16"): ?> selected <?php endif; ?>><?php echo e(__('common.show')); ?> <?php echo e(getNumberTranslate(16)); ?> <?php echo e(__('common.item’s')); ?></option>
                                <option value="25" <?php if(isset($paginate) && $paginate == "25"): ?> selected <?php endif; ?>><?php echo e(__('common.show')); ?> <?php echo e(getNumberTranslate(25)); ?> <?php echo e(__('common.item’s')); ?></option>
                                <option value="30" <?php if(isset($paginate) && $paginate == "30"): ?> selected <?php endif; ?>><?php echo e(__('common.show')); ?> <?php echo e(getNumberTranslate(30)); ?> <?php echo e(__('common.item’s')); ?></option>
                            </select>
                        </div>
                        <div class="shorting_box">
                            <select class="amaz_select getFilterUpdateByIndex" name="sort_by" id="product_short_list">
                                <option disabled selected><?php echo e(__('amazy.Sorting by')); ?></option>
                                <option value="new" <?php if(isset($sort_by) && $sort_by == "new"): ?> selected <?php endif; ?>><?php echo e(__('common.new')); ?></option>
                                <option value="old" <?php if(isset($sort_by) && $sort_by == "old"): ?> selected <?php endif; ?>><?php echo e(__('common.old')); ?></option>
                                <option value="alpha_asc" <?php if(isset($sort_by) && $sort_by == "alpha_asc"): ?> selected <?php endif; ?>><?php echo e(__('defaultTheme.name_a_to_z')); ?></option>
                                <option value="alpha_desc" <?php if(isset($sort_by) && $sort_by == "alpha_desc"): ?> selected <?php endif; ?>><?php echo e(__('defaultTheme.name_z_to_a')); ?></option>
                                <option value="low_to_high" <?php if(isset($sort_by) && $sort_by == "low_to_high"): ?> selected <?php endif; ?>><?php echo e(__('defaultTheme.price_low_to_high')); ?></option>
                                <option value="high_to_low" <?php if(isset($sort_by) && $sort_by == "high_to_low"): ?> selected <?php endif; ?>><?php echo e(__('defaultTheme.price_high_to_low')); ?></option>
                            </select>
                        </div>
                        <div class="flex-fill text-end">
                            <div class="category_toggler d-inline-block d-lg-none  gj-cursor-pointer">
                                <svg xmlns="http://www.w3.org/2000/svg" width="19.5" height="13" viewBox="0 0 19.5 13">
                                    <g id="filter-icon" transform="translate(28)">
                                        <rect id="Rectangle_1" data-name="Rectangle 1" width="19.5" height="2" rx="1" transform="translate(-28)" fill="#fd4949"/>
                                        <rect id="Rectangle_2" data-name="Rectangle 2" width="15.5" height="2" rx="1" transform="translate(-26 5.5)" fill="#fd4949"/>
                                        <rect id="Rectangle_3" data-name="Rectangle 3" width="5" height="2" rx="1" transform="translate(-20.75 11)" fill="#fd4949"/>
                                    </g>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tab-content mb_30" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <!-- content  -->
            <div class="row custom_rowProduct">
                <?php if(count($products) > 0): ?>
                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if(get_class($product) == \Modules\Seller\Entities\SellerProduct::class): ?>
                            <input type="hidden" name="base_sku_price" id="base_sku_price" value="
                            <?php if(@$product->hasDeal): ?>
                                <?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->hasDeal->discount_type,@$product->hasDeal->discount)); ?>

                            <?php else: ?>
                                <?php if(@$product->hasDiscount == 'yes'): ?>
                                <?php echo e(selling_price(@$product->skus->first()->selling_price,@$product->discount_type,@$product->discount)); ?>

                                <?php else: ?>
                                <?php echo e(@$product->skus->first()->selling_price); ?>

                                <?php endif; ?>
                            <?php endif; ?>
                            ">
                            <div class="col-xl-4 col-lg-4 col-md-6 col-6">
                                <div class="product_widget5 mb_30 style5">
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
                                            <a href="" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> data-product-id=<?php echo e($product->id); ?>>
                                                <i class="ti-control-shuffle"></i>
                                            </a>
                                            <a href="" class="add_to_wishlist <?php echo e($product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-seller_id="<?php echo e($product->user_id); ?>">
                                                <i class="ti-heart"></i>
                                            </a>
                                            <a class="quickView" data-product_id="<?php echo e($product->id); ?>" data-type="product">
                                                <i class="ti-eye"></i>
                                            </a>
                                        </div>
                                        <?php if($product->hasDeal): ?>
                                            <?php if($product->hasDeal->discount > 0): ?>
                                                <span class="badge_1">
                                                    <?php if(@$product->hasDeal->discount_type == 0): ?>
                                                        -<?php echo e(getNumberTranslate(@$product->hasDeal->discount)); ?>%
                                                    <?php else: ?>
                                                        -<?php echo e(single_price(@$product->hasDeal->discount)); ?>

                                                    <?php endif; ?>

                                                </span>
                                            <?php endif; ?>
                                        <?php else: ?>
                                            <?php if(@$product->hasDiscount == 'yes'): ?>
                                                <?php if(@$product->discount > 0): ?>
                                                    <span class="badge_1">
                                                        <?php if(@$product->discount_type == 0): ?>
                                                        -<?php echo e(getNumberTranslate(@$product->discount)); ?>%
                                                        <?php else: ?>
                                                        -<?php echo e(single_price(@$product->discount)); ?>

                                                        <?php endif; ?>

                                                    </span>
                                                <?php endif; ?>

                                            <?php endif; ?>
                                        <?php endif; ?>
                                    </div>
                                    <div class="product__meta">
                                        <a href="<?php echo e(singleProductURL(@$product->seller->slug, $product->slug)); ?>">
                                            <h4><?php if($product->product_name): ?> <?php echo e(textLimit(@$product->product_name, 50)); ?> <?php else: ?> <?php echo e(textLimit(@$product->product->product_name, 50)); ?> <?php endif; ?></h4>
                                        </a>
                                        <span class="product_banding "><?php echo e(@$product->brand->name ?? __('generic')); ?></span>
                                        <div class="stars justify-content-center">
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
                                                <?php echo e(getProductDiscountedPrice(@$product)); ?>

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
                            </div>
                        <?php else: ?>
                            <div class="col-xl-4 col-lg-4 col-md-6 col-6">
                                <div class="product_widget5 mb_30 style5">
                                    <div class="product_thumb_upper">
                                        <?php
                                            $thumbnail = showImage($product->thumbnail_image);
                                            $price_qty = getGiftcardwithDiscountPrice(@$product);
                                            $showData = [
                                                'name' => @$product->product_name,
                                                'url' => route('frontend.gift-card.show',$product->slug),
                                                'price' => $price_qty,
                                                'thumbnail' => $thumbnail
                                            ];
                                        ?>
                                        <a href="<?php echo e(route('frontend.gift-card.show',$product->slug)); ?>" class="thumb">
                                            <img src="<?php echo e($thumbnail); ?>" alt="<?php echo e(@$product->product_name); ?>" title="<?php echo e(@$product->product_name); ?>">
                                        </a>
                                        <div class="product_action">
                                            <a href="javascript:void(0)" class="add_to_wishlist_from_search <?php echo e(@$product->IsWishlist == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-type="gift_card" data-seller_id="1"> <i class="ti-heart"></i> </a>
                                            <a class="add_to_cart_gift_thumnail" data-gift-card-id="<?php echo e($product->id); ?>" data-seller="1" 
                                                data-base-price="<?php if($product->hasDiscount()): ?> <?php echo e(selling_price($product->selling_price, $product->discount_type, $product->discount)); ?> <?php else: ?> <?php echo e($product->selling_price); ?> <?php endif; ?>"
                                                data-prod_info="<?php echo e(json_encode($showData)); ?>"
                                                href="javascript:void(0)"
                                                > <i class="ti-bag"></i> </a>
                                        </div>
                                        <?php if($product->hasDiscount()): ?>
                                            <?php if($product->discount > 0): ?>
                                                <span class="badge_1">
                                                    <?php if(@$product->discount_type ==0): ?>
                                                        -<?php echo e(getNumberTranslate(@$product->discount)); ?>%
                                                    <?php else: ?>
                                                        -<?php echo e(single_price(@$product->discount)); ?>

                                                    <?php endif; ?>
                                                </span>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    </div>
                                    <div class="product__meta">
                                        <a href="<?php echo e(route('frontend.gift-card.show',$product->slug)); ?>">
                                            <h4>
                                                <?php echo e(textLimit($product->product_name,28)); ?>

                                            </h4>
                                        </a>
                                        <span class="product_banding "><?php echo e(__('generic')); ?></span>
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
                                        <div class="stars justify-content-center">
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
                                                    <?php if(getGiftcardwithoutDiscountPrice(@$product) != single_price(0)): ?>
                                                        <?php echo e(getGiftcardwithoutDiscountPrice(@$product)); ?>

                                                    <?php endif; ?>
                                                </span> <br>
                                                <?php echo e(getGiftcardwithDiscountPrice($product)); ?>

                                            </p>
                                            <a class="add_cart add_to_cart add_to_cart_gift_thumnail" data-gift-card-id="<?php echo e($product->id); ?>" 
                                                data-seller="1" data-base-price="<?php if($product->hasDiscount()): ?> <?php echo e(selling_price($product->selling_price, $product->discount_type, $product->discount)); ?> <?php else: ?> <?php echo e($product->selling_price); ?> <?php endif; ?>"
                                                data-prod_info = "<?php echo e(json_encode($showData)); ?>"
                                                href="javascript:void(0)"
                                                ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                    <div class="col-12">
                        <div class="text-center alert alert-danger">
                            <?php echo e(__('defaultTheme.no_product_found')); ?>

                        </div>
                    </div>
                <?php endif; ?>
            </div>
            <!--/ content  -->
        </div>
        <div class="tab-pane fade " id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <!-- content  -->
            <div class="row">
                <?php if(count($products) > 0): ?>
                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    
                        <?php if(get_class($product) == \Modules\Seller\Entities\SellerProduct::class): ?>
                            
                            <div class="col-xl-12">
                                <div class="product_widget5 mb_30 list_style_product">
                                    <div class="product_thumb_upper m-0">
                                        <?php
                                            if(@$product->thum_img != null){
                                                $thumbnail = showImage(@$product->thum_img);
                                            }else {
                                                $thumbnail = showImage(@$product->product->thumbnail_image_source);
                                            }
                                            $price_qty = getProductDiscountedPrice(@$product->product);
                                            $showData = [
                                                'name' => @$product->product->product_name,
                                                'url' => singleProductURL(@$product->seller->slug, @$product->slug),
                                                'price' => $price_qty,
                                                'thumbnail' => $thumbnail
                                            ];
                                        ?>
                                        <a href="<?php echo e(singleProductURL(@$product->seller->slug, $product->slug)); ?>" class="thumb">
                                            <img src="<?php echo e($thumbnail); ?>" alt="<?php echo e(@$product->product_name?@$product->product_name:@$product->product->product_name); ?>" title="<?php echo e(@$product->product_name?@$product->product_name:@$product->product->product_name); ?>">
                                        </a>
                                        <div class="product_action">
                                            <a href="" class="addToCompareFromThumnail" data-producttype="<?php echo e(@$product->product->product_type); ?>" data-seller=<?php echo e($product->user_id); ?> data-product-sku=<?php echo e(@$product->skus->first()->id); ?> data-product-id=<?php echo e($product->id); ?>>
                                                <i class="ti-control-shuffle"></i>
                                            </a>
                                            <a href="" class="add_to_wishlist <?php echo e($product->is_wishlist() == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-seller_id="<?php echo e($product->user_id); ?>">
                                                <i class="ti-heart"></i>
                                            </a>
                                            <a class="quickView" data-product_id="<?php echo e($product->id); ?>" data-type="product">
                                                <i class="ti-eye"></i>
                                            </a>
                                        </div>
                                        <?php if($product->hasDeal): ?>
                                            <?php if($product->hasDeal->discount > 0): ?>
                                                <span class="badge_1">
                                                    <?php if(@$product->hasDeal->discount_type == 0): ?>
                                                        -<?php echo e(getNumberTranslate(@$product->hasDeal->discount)); ?>%
                                                    <?php else: ?>
                                                        -<?php echo e(single_price(@$product->hasDeal->discount)); ?>

                                                    <?php endif; ?>

                                                </span>
                                            <?php endif; ?>
                                        <?php else: ?>
                                            <?php if(@$product->hasDiscount == 'yes'): ?>
                                                <?php if(@$product->discount > 0): ?>
                                                    <span class="badge_1">
                                                        <?php if(@$product->discount_type == 0): ?>
                                                        -<?php echo e(getNumberTranslate(@$product->discount)); ?>%
                                                        <?php else: ?>
                                                        -<?php echo e(single_price(@$product->discount)); ?>

                                                        <?php endif; ?>

                                                    </span>
                                                <?php endif; ?>

                                            <?php endif; ?>
                                        <?php endif; ?>
                                    </div>
                                    <div class="product__meta">
                                        <a href="<?php echo e(singleProductURL(@$product->seller->slug, $product->slug)); ?>">
                                            <h4>
                                                <?php if($product->product_name): ?> <?php echo e(textLimit(@$product->product_name, 60)); ?> <?php else: ?> <?php echo e(textLimit(@$product->product->product_name, 60)); ?> <?php endif; ?>
                                            </h4>
                                        </a>
                                        <span class="product_banding ">
                                            <?php if($product->product->brand->name ): ?>
                                                <?php echo e($product->product->brand->name ?? __('generic')); ?>

                                            <?php endif; ?>
                                        </span>
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
                                        
                                        <div class="product_prise justify-content-start">
                                            <p>
                                                <span>
                                                    <?php if(getProductwitoutDiscountPrice(@$product) != single_price(0)): ?>
                                                        <?php echo e(getProductwitoutDiscountPrice(@$product)); ?>

                                                    <?php endif; ?>
                                                </span> <br>
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
                                                href="javascript:void(0)"
                                                ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php else: ?>
                            <div class="col-xl-12">
                                <div class="product_widget5 mb_30 list_style_product">
                                    <div class="product_thumb_upper m-0">
                                        <?php
                                            $thumbnail = showImage($product->thumbnail_image);
                                            $price_qty = getGiftcardwithDiscountPrice(@$product);
                                            $showData = [];
                                            $showData = [
                                                'name' => @$product->product_name,
                                                'url' => route('frontend.gift-card.show',$product->slug),
                                                'price' => $price_qty,
                                                'thumbnail' => $thumbnail
                                            ];
                                        ?>
                                        <a href="<?php echo e(route('frontend.gift-card.show',$product->slug)); ?>" class="thumb">
                                            <img src="<?php echo e($thumbnail); ?>" alt="<?php echo e(@$product->product_name); ?>" title="<?php echo e(@$product->product_name); ?>">
                                        </a>
                                        <div class="product_action">
                                            <a href="" class="add_to_wishlist_from_search <?php echo e(@$product->IsWishlist == 1?'is_wishlist':''); ?>" id="wishlistbtn_<?php echo e($product->id); ?>" data-product_id="<?php echo e($product->id); ?>" data-type="gift_card" data-seller_id="1"> <i class="ti-heart"></i> </a>
                                            <a class="add_to_cart_gift_thumnail" data-gift-card-id="<?php echo e($product->id); ?>" data-seller="1" 
                                                data-base-price="<?php if($product->hasDiscount()): ?> <?php echo e(selling_price($product->selling_price, $product->discount_type, $product->discount)); ?> <?php else: ?> <?php echo e($product->selling_price); ?> <?php endif; ?>"
                                                data-prod_info = "<?php echo e(json_encode($showData)); ?>"
                                                href="javascript:void(0)"
                                                > <i class="ti-bag"></i> </a>
                                        </div>
                                        <?php if($product->hasDiscount()): ?>
                                            <?php if($product->discount > 0): ?>
                                                <span class="badge_1">
                                                    <?php if(@$product->discount_type ==0): ?>
                                                        -<?php echo e(getNumberTranslate(@$product->discount)); ?>%
                                                    <?php else: ?>
                                                        -<?php echo e(single_price(@$product->discount)); ?>

                                                    <?php endif; ?>
                                                </span>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    </div>
                                    <div class="product__meta">
                                        <a href="<?php echo e(route('frontend.gift-card.show',$product->slug)); ?>">
                                            <h4>
                                                <?php echo e(textLimit($product->product_name,28)); ?>

                                            </h4>
                                        </a>
                                        <span class="product_banding ">
                                            <?php echo e(__('generic')); ?>

                                        </span>
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
                                        
                                        <div class="product_prise justify-content-start">
                                            <p>
                                                <span>
                                                    <?php if(getGiftcardwithoutDiscountPrice(@$product) != single_price(0)): ?>
                                                        <?php echo e(getGiftcardwithoutDiscountPrice(@$product)); ?>

                                                    <?php endif; ?>
                                                </span> <br>
                                                <?php echo e(getGiftcardwithDiscountPrice($product)); ?>

                                            </p>
                                            <a class="add_cart add_to_cart add_to_cart_gift_thumnail" data-gift-card-id="<?php echo e($product->id); ?>" 
                                                data-seller="1" data-base-price="<?php if($product->hasDiscount()): ?> <?php echo e(selling_price($product->selling_price, $product->discount_type, $product->discount)); ?> <?php else: ?> <?php echo e($product->selling_price); ?> <?php endif; ?>"
                                                data-prod_info= "<?php echo e(json_encode($showData)); ?>"
                                                href="javascript:void(0)"
                                                ><?php echo e(__('defaultTheme.add_to_cart')); ?></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                    <div class="col-12">
                        <div class="text-center alert alert-danger">
                            <?php echo e(__('defaultTheme.no_product_found')); ?>

                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>
        <input type="hidden" name="filterCatCol" class="filterCatCol" value="0">
            <!--/ content  -->
            <?php if($products->lastPage() > 1): ?>
                <?php if (isset($component)) { $__componentOriginal1f64e456599d6b81c72c2606e4264cad43b02719 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\PaginationComponent::class, ['items' => $products,'type' => '']); ?>
<?php $component->withName('pagination-component'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginal1f64e456599d6b81c72c2606e4264cad43b02719)): ?>
<?php $component = $__componentOriginal1f64e456599d6b81c72c2606e4264cad43b02719; ?>
<?php unset($__componentOriginal1f64e456599d6b81c72c2606e4264cad43b02719); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
            <?php endif; ?>
    </div>
<?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/partials/listing_paginate_data.blade.php ENDPATH**/ ?>