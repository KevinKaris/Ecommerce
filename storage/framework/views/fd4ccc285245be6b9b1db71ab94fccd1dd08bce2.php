    <input type="hidden" id="url" value="<?php echo e(url('/')); ?>">
    <?php
        $base_url = url('/');
        $current_url = url()->current();
        $just_path = trim(str_replace($base_url,'',$current_url));
        $flash_deal = \Modules\Marketing\Entities\FlashDeal::where('status', 1)->first();
        $new_user_zone = \Modules\Marketing\Entities\NewUserZone::where('status', 1)->first();
    ?>
    <input type="hidden" id="just_url" value="<?php echo e($just_path); ?>">
    <!-- HEADER::START -->
    <header class="amazcartui_header">
        <div id="sticky-header" class="header_area">
            <?php echo $__env->make('frontend.amazy.partials._submenu',[$compares], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('frontend.amazy.partials._mainmenu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <!-- main_header_area  -->
            <?php echo $__env->make('frontend.amazy.partials._mega_menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none">
                        </div>
                    </div>
                </div>
            </div>
            <div class="menu_search_popup">
                <form class="menu_search_popup_field" method="GET" id="search_form2">
                    <input type="text" class="category_box_input2" placeholder="<?php echo e(__('defaultTheme.search_your_item')); ?>" id="inlineFormInputGroup">
                    <button type="submit" id="search_button">
                        <i class="ti-search"></i> Search
                    </button>
                </form>
                <span class="search_close home6_search_hide">
                    <i class="fas fa-times"></i>
                </span>
                <div class="live-search">
                    <ul class="p-0" id="search_items2">
                        <li class="search_item" id="search_empty_list2">
                            
                        </li>
                        <li class="search_item" id="search_history2">
                            
                        </li>
                        <li class="search_item" id="tag_search2">
                            
                        </li>
                        <li class="search_item" id="category_search2">
                            
                        </li>
                        <li class="search_item" id="product_search2">
                            
                        </li>
                        <li class="search_item" id="seller_search2">
                            
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <?php if(request()->is('gift-cards/*') || request()->is('product/*')): ?>
            <div class="product_details_buttons d-md-none" id="cart_footer_mobile">
                
                <?php if(request()->is('product/*')): ?>
                    <?php if(isModuleActive('MultiVendor')): ?>
                        <a href="
                            <?php if($product->seller->slug): ?>
                                <?php echo e(route('frontend.seller',$product->seller->slug)); ?>

                            <?php else: ?>
                                <?php echo e(route('frontend.seller',base64_encode($product->seller->id))); ?>

                            <?php endif; ?>
                        " class="d-flex flex-column justify-content-center product_details_icon">
                            <i class="ti-save"></i>
                            <span><?php echo e(__('common.store')); ?></span>
                        </a>
                    <?php else: ?>
                    <a href="<?php echo e(url('/')); ?>" class="d-flex flex-column justify-content-center product_details_icon">
                        <i class="ti-home"></i>
                        <span><?php echo e(__('common.home')); ?></span>
                    </a>
                    <?php endif; ?>
                    <?php if(@$product->stock_manage == 1 && @$product->skus->first()->product_stock >= @$product->product->minimum_order_qty || @$product->stock_manage == 0): ?>
                        
                        <button type="button" class="product_details_button style1 buy_now_btn" data-id="<?php echo e($product->id); ?>" data-type="product">
                            <span><?php echo e(__('common.buy_now')); ?></span>
                        </button>
                        
                        <button class="product_details_button add_to_cart_btn" type="button"><?php echo e(__('common.add_to_cart')); ?></button>
                    <?php else: ?>
                        <button type="button" class="product_details_button style1" disabled>
                            <span><?php echo e(__('defaultTheme.out_of_stock')); ?></span>
                        </button>
                        <button type="button" class="product_details_button" disabled><?php echo e(__('defaultTheme.out_of_stock')); ?></button>
                    <?php endif; ?>
                <?php else: ?>
                    
                    <button type="button" class="product_details_button style1 buy_now_btn" data-gift-card-id="<?php echo e($card->id); ?>" data-seller="1" data-base-price="<?php echo e($base_price); ?>" data-shipping-method="1" data-type="gift_card">
                        <span><?php echo e(__('common.buy_now')); ?></span>
                    </button>
                    
                    <button class="product_details_button add_gift_card_to_cart" type="button" data-gift-card-id="<?php echo e($card->id); ?>" data-seller="1" data-base-price="<?php echo e($base_price); ?>" data-shipping-method="1" data-show="<?php echo e(json_encode($showData)); ?>"><?php echo e(__('common.add_to_cart')); ?></button>
                <?php endif; ?>
            </div>
        <?php else: ?>
            <ul class="short_curt_icons">
                <li>
                    <a href="<?php echo e(url('/')); ?>">
                        <div class="cart_singleIcon">
                            <i class="ti-home"></i>
                        </div>
                        <span><?php echo e(__('common.home')); ?></span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(url('/category')); ?>">
                        <div class="cart_singleIcon">
                            <i class="ti-align-justify"></i>
                        </div>
                        <span><?php echo e(__('common.category')); ?></span>
                    </a>
                </li>
                <li>
                    <a class="position-relative" href="<?php echo e(url('/cart')); ?>">
                        <div class="cart_singleIcon cart_singleIcon_cart d-flex align-items-center justify-content-center">
                            <i class="ti-shopping-cart"></i>
                        </div>
                        <span><?php echo e(__('common.cart')); ?> (<span class="cart_count_bottom"><?php echo e(getNumberTranslate($items)); ?></span>)</span>
                    </a>
                </li>
                <li>
                    <?php if(isset($flash_deal)): ?>
                        <a class="position-relative" href="<?php echo e(route('frontend.flash-deal', $flash_deal->slug)); ?>">
                            <div class="cart_singleIcon">
                                <img class="mb_5" src="<?php echo e(showImage('frontend/amazy/img/amaz_icon/deals_white.svg')); ?>" alt="<?php echo e(__('amazy.Daily Deals')); ?>" title="<?php echo e(__('amazy.Daily Deals')); ?>">
                            </div>
                            <span><?php echo e(__('amazy.Daily Deals')); ?></span>
                        </a>
                    <?php else: ?>
                        <a class="position-relative" href="<?php echo e(url('/profile/notifications')); ?>">
                            <div class="cart_singleIcon">
                                <i class="ti-bell"></i>
                            </div>
                            <span><?php echo e(__('common.notification')); ?></span>
                        </a>
                    <?php endif; ?>
                </li>
                <?php if(auth()->guard()->guest()): ?>
                    <li>
                        <a href="<?php echo e(url('/login')); ?>">
                            <div class="cart_singleIcon">
                                <i class="ti-user"></i>
                            </div>
                            <span><?php echo e(__('defaultTheme.login')); ?></span>
                        </a>
                    </li>
                <?php else: ?>
                    <li>
                        <a href="<?php echo e(route('frontend.dashboard')); ?>">
                            <div class="cart_singleIcon">
                                <i class="ti-user"></i>
                            </div>
                            <span><?php echo e(__('common.account')); ?></span>
                        </a>
                    </li>
                <?php endif; ?>
            </ul>
        <?php endif; ?>
    </header>
    <!--/ HEADER::END -->

<?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/partials/_header.blade.php ENDPATH**/ ?>