
<?php $__env->startSection('styles'); ?>
<link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/backend_page_css/order.css'))); ?>" />
<?php $__env->stopSection(); ?>
<?php $__env->startSection('mainContent'); ?>
<!--  dashboard part css here -->
<section class="admin-visitor-area up_st_admin_visitor">
    <div class="container-fluid p-0">
        <div class="row">

            <div class="col-md-12 mb-20">
                <div class="box_header_right">
                    <div class="float-lg-right float-none pos_tab_btn justify-content-end">
                        <ul class="nav" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active show" href="#purchase_list_data" role="tab"
                                    data-toggle="tab" aria-selected="true"><?php echo e(__('customer_panel.purchase_list')); ?></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#toPayData" role="tab" data-toggle="tab"
                                    aria-selected="true"><?php echo e(__('customer_panel.to_pay')); ?></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#toShipData" role="tab" data-toggle="tab"
                                    aria-selected="true"><?php echo e(__('customer_panel.to_ship')); ?></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#toRecieveData" role="tab" data-toggle="tab"
                                    aria-selected="true"><?php echo e(__('customer_panel.to_recieve')); ?></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>


            <div class="col-xl-12">
                <div class="white_box_30px p-15 mb_30">
                    <form class="p-0" action="<?php echo e(route('frontend.my_purchase_order_list')); ?>" method="get" id="rnForm">
                        <div class="row mt-3">
                            <div class="col-md-3">
                                <select class="primary_select mb-25 form-control" id="rn" name="rn">
                                    <?php if(isset($rn)): ?>
                                        <option value="1" <?php if($rn == 8): ?> selected <?php endif; ?>>8</option>
                                        <option value="2" <?php if($rn == 15): ?> selected <?php endif; ?>>15</option>
                                        <option value="20" <?php if($rn == 20): ?> selected <?php endif; ?>>20</option>
                                        <option value="40" <?php if($rn == 40): ?> selected <?php endif; ?>>40</option>
                                    <?php else: ?>
                                        <option value="8">8</option>
                                        <option value="15">15</option>
                                        <option value="20">20</option>
                                        <option value="40">40</option>
                                    <?php endif; ?>
                                </select>
                            </div>
                        </div>
                    </form>
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade active show" id="purchase_list_data">
                            <div class="box_header common_table_header ">
                                <div class="main-title d-md-flex">
                                    <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('customer_panel.purchase_list')); ?></h3>
                                </div>
                            </div>
                            <div class="order_details">
                                <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="single_order_part">
                                        <div class="order_details_status">
                                            <ul class="w-100">
                                                <li>
                                                    <p><span><?php echo e(__('common.order_id')); ?></span>: <?php echo e($order->order_number); ?></p>
                                                    <p><span><?php echo e(__('defaultTheme.order_date')); ?></span>: <?php echo e($order->created_at); ?></p>
                                                </li>
                                                <li>
                                                    <?php if($order->is_confirmed == 1): ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.confirmed')); ?></p>
                                                    <?php elseif($order->is_confirmed == 2): ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.declined')); ?></p>
                                                    <?php else: ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.pending')); ?></p>
                                                    <?php endif; ?>
                                                </li>
                                                <li>
                                                    <p><span><?php echo e(__('defaultTheme.order_amount')); ?>:</span>: <?php echo e(single_price($order->grand_total)); ?></p>
                                                </li>
                                            </ul>
                                            <a href="<?php echo e(route('frontend.my_purchase_order_pdf', encrypt($order->id))); ?>" class="primary-btn radius_30px mr-10 fix-gr-bg text-white"><?php echo e(__('defaultTheme.download_invoice')); ?> &nbsp;&nbsp;&nbsp;&nbsp; </a>
                                        </div>
                                        <div class="order_details_iner">
                                            <div class="order_item">
                                                <?php $__currentLoopData = $order->packages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $package): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php $__currentLoopData = $package->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $package_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <?php if($package_product->type == "gift_card"): ?>
                                                            <div class="single_order_item">
                                                                <div class="order_item_name">
                                                                    <div class="product_img_div">
                                                                        <img src="<?php echo e(showImage(@$package_product->giftCard->thumbnail_image)); ?>" alt="#">
                                                                    </div>

                                                                    <p><?php echo e(substr(@$package_product->giftCard->name,0,22)); ?> <?php if(strlen(@$package_product->giftCard->name) > 22): ?>... <?php endif; ?></p>
                                                                </div>
                                                                <p><?php echo e($package_product->qty); ?> X <?php echo e(single_price($package_product->price)); ?></p>
                                                            </div>
                                                        <?php else: ?>
                                                            <div class="single_order_item">
                                                                <div class="order_item_name">
                                                                    <div class="product_img_div">
                                                                        <?php if(@$package_product->seller_product_sku->sku->product->product_type == 1): ?>
                                                                            <img src="<?php echo e(showImage(@$package_product->seller_product_sku->product->thum_img??@$package_product->seller_product_sku->sku->product->thumbnail_image_source)); ?>" alt="#">
                                                                        <?php else: ?>

                                                                            <img src="<?php echo e(showImage((@$package_product->seller_product_sku->sku->variant_image?@$package_product->seller_product_sku->sku->variant_image:@$package_product->seller_product_sku->product->thum_img)??@$package_product->seller_product_sku->product->product->thumbnail_image_source)); ?>" alt="#">
                                                                        <?php endif; ?>
                                                                    </div>

                                                                    <p><?php if(@$package_product->seller_product_sku->product->product_name): ?> <?php echo e(substr(@$package_product->seller_product_sku->product->product_name,0,22)); ?> <?php if(strlen(@$package_product->seller_product_sku->product->product_name) > 22): ?>... <?php endif; ?> <?php else: ?> <?php echo e(substr(@$package_product->seller_product_sku->sku->product->product_name,0,22)); ?> <?php if(strlen(@$package_product->seller_product_sku->sku->product->product_name) > 22): ?>... <?php endif; ?> <?php endif; ?></p>


                                                                    <?php if($package_product->seller_product_sku->sku->product->product_type == 2): ?>
                                                                    <br>
                                                                   <p>

                                                                       <?php
                                                                           $countCombinatiion = count(@$package_product->seller_product_sku->product_variations);
                                                                       ?>
                                                                       <?php $__currentLoopData = @$package_product->seller_product_sku->product_variations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $combination): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                       <?php if($combination->attribute->name == 'Color'): ?>
                                                                       <?php echo e($combination->attribute->name); ?>: <?php echo e($combination->attribute_value->color->name); ?>

                                                                       <?php else: ?>
                                                                       <?php echo e($combination->attribute->name); ?>: <?php echo e($combination->attribute_value->value); ?>

                                                                       <?php endif; ?>

                                                                       <?php if($countCombinatiion > $key +1): ?>
                                                                       ,
                                                                       <?php endif; ?>
                                                                       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


                                                                   </p>
                                                                   <?php endif; ?>

                                                                </div>
                                                                <p><?php echo e($package_product->qty); ?> X <?php echo e(single_price($package_product->price)); ?></p>
                                                            </div>
                                                        <?php endif; ?>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </div>
                                            <div class="order_details_btn">
                                                <a href="<?php echo e(route('frontend.my_purchase_order_detail', encrypt($order->id))); ?>" target="_blank" class="btn_2"><?php echo e(__('defaultTheme.order_details')); ?></a>
                                                <a href="#" class="btn_2"><?php echo e(__('defaultTheme.contact_seller')); ?></a>
                                                <?php if(\Carbon\Carbon::now() <= $order->created_at->addDays(app('business_settings')->where('type', 'refund_times')->first()->status) && $order->is_cancelled == 0): ?>
                                                    <a href="<?php echo e(route('refund.make_request', encrypt($order->id))); ?>" class="btn_2"><?php echo e(__('defaultTheme.open_dispute')); ?></a>
                                                <?php endif; ?>
                                                <?php if($order->is_confirmed == 0): ?>
                                                    <?php if($order->is_cancelled == 0): ?>
                                                        <a data-order-id="<?php echo e($order->id); ?>" class="btn_2 order_cancel"><?php echo e(__('defaultTheme.cancel_order')); ?></a>
                                                    <?php else: ?>
                                                        <a class="btn_2"><?php echo e(__('defaultTheme.order_cancelled')); ?></a>
                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php if(strpos($_SERVER['REQUEST_URI'], 'rn')): ?>
                                    <?php echo $__env->make(theme('pages.profile.partials.paginations'), ['orders' => $orders->appends('rn',$rn), 'request_type' => request()->myPurchaseOrderList], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php else: ?>
                                    <?php echo $__env->make(theme('pages.profile.partials.paginations'), ['orders' => $orders, 'request_type' => request()->myPurchaseOrderList], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php endif; ?>
                            </div>
                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="toPayData">
                            <div class="box_header common_table_header ">
                                <div class="main-title d-md-flex">
                                    <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('customer_panel.to_pay')); ?></h3>
                                </div>
                            </div>
                            <div class="order_details">
                                <?php $__currentLoopData = $no_paid_orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $no_paid_order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="single_order_part">
                                        <div class="order_details_status">
                                            <ul class="w-100">
                                                <li>
                                                    <p><span><?php echo e(__('common.order_id')); ?></span>: <?php echo e($no_paid_order->order_number); ?></p>
                                                    <p><span><?php echo e(__('defaultTheme.order_date')); ?></span>: <?php echo e($no_paid_order->created_at); ?></p>
                                                </li>
                                                <li>
                                                    <?php if($no_paid_order->is_confirmed == 1): ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.confirmed')); ?></p>
                                                    <?php elseif($no_paid_order->is_confirmed == 2): ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.declined')); ?></p>
                                                    <?php else: ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.pending')); ?></p>
                                                    <?php endif; ?>
                                                </li>
                                                <li>
                                                    <p><span><?php echo e(__('defaultTheme.order_amount')); ?>:</span>: <?php echo e(single_price($no_paid_order->grand_total)); ?></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="order_details_iner">
                                            <div class="order_item">
                                                <?php $__currentLoopData = $no_paid_order->packages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $package): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php $__currentLoopData = $package->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $package_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <div class="single_order_item">
                                                            <div class="order_item_name">
                                                                <div class="product_img_div">
                                                                    <?php if(@$package_product->seller_product_sku->sku->product->product_type == 1): ?>
                                                                        <img src="<?php echo e(showImage(@$package_product->seller_product_sku->product->thum_img??@$package_product->seller_product_sku->sku->product->thumbnail_image_source)); ?>" alt="#">
                                                                    <?php else: ?>

                                                                        <img src="<?php echo e(showImage((@$package_product->seller_product_sku->sku->variant_image?@$package_product->seller_product_sku->sku->variant_image:@$package_product->seller_product_sku->product->thum_img)??@$package_product->seller_product_sku->product->product->thumbnail_image_source)); ?>" alt="#">
                                                                    <?php endif; ?>
                                                                </div>

                                                                <p><?php if(@$package_product->seller_product_sku->product->product_name): ?> <?php echo e(substr(@$package_product->seller_product_sku->product->product_name,0,22)); ?> <?php if(strlen(@$package_product->seller_product_sku->product->product_name) > 22): ?>... <?php endif; ?> <?php else: ?> <?php echo e(substr(@$package_product->seller_product_sku->sku->product->product_name,0,22)); ?> <?php if(strlen(@$package_product->seller_product_sku->sku->product->product_name) > 22): ?>... <?php endif; ?> <?php endif; ?></p>

                                                                <?php if($package_product->seller_product_sku->sku->product->product_type == 2): ?>
                                                                <br>
                                                               <p>

                                                                   <?php
                                                                       $countCombinatiion = count(@$package_product->seller_product_sku->product_variations);
                                                                   ?>
                                                                   <?php $__currentLoopData = @$package_product->seller_product_sku->product_variations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $combination): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                   <?php if($combination->attribute->name == 'Color'): ?>
                                                                   <?php echo e($combination->attribute->name); ?>: <?php echo e($combination->attribute_value->color->name); ?>

                                                                   <?php else: ?>
                                                                   <?php echo e($combination->attribute->name); ?>: <?php echo e($combination->attribute_value->value); ?>

                                                                   <?php endif; ?>

                                                                   <?php if($countCombinatiion > $key +1): ?>
                                                                   ,
                                                                   <?php endif; ?>
                                                                   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


                                                               </p>
                                                               <?php endif; ?>
                                                            </div>
                                                            <p><?php echo e($package_product->qty); ?> X <?php echo e(single_price($package_product->price)); ?></p>
                                                        </div>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </div>
                                            <div class="order_details_btn">
                                                <a href="<?php echo e(route('frontend.my_purchase_order_detail', encrypt($no_paid_order->id))); ?>" target="_blank" class="btn_2"><?php echo e(__('defaultTheme.order_details')); ?></a>
                                                <a href="#" class="btn_2"><?php echo e(__('defaultTheme.contact_seller')); ?></a>
                                                <?php if(\Carbon\Carbon::now() <= $no_paid_order->created_at->addDays(app('business_settings')->where('type', 'refund_times')->first()->status)): ?>
                                                    <a href="<?php echo e(route('refund.make_request', encrypt($no_paid_order->id))); ?>" class="btn_2"><?php echo e(__('defaultTheme.open_dispute')); ?></a>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php echo $__env->make(theme('pages.profile.partials.paginations'), ['orders' => $no_paid_orders, 'request_type' => request()->myPurchaseOrderListNotPaid], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="toShipData">
                            <div class="box_header common_table_header ">
                                <div class="main-title d-md-flex">
                                    <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('customer_panel.to_ship')); ?></h3>
                                </div>
                            </div>
                            <div class="order_details">
                                <?php $__currentLoopData = $to_shippeds; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $order_package): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="single_order_part">
                                        <div class="order_details_status">
                                            <ul class="w-100">
                                                <li>
                                                    <p><span><?php echo e(__('common.order_id')); ?></span>: <?php echo e($order_package->order->order_number); ?></p>
                                                    <p><span><?php echo e(__('defaultTheme.order_date')); ?></span>: <?php echo e($order_package->order->created_at); ?></p>
                                                </li>
                                                <li>
                                                    <?php if($order_package->order->is_confirmed == 1): ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.confirmed')); ?></p>
                                                    <?php elseif($no_paid_order->is_confirmed == 2): ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.declined')); ?></p>
                                                    <?php else: ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.pending')); ?></p>
                                                    <?php endif; ?>
                                                </li>
                                                <li>
                                                    <p><span><?php echo e(__('defaultTheme.order_amount')); ?></span>: <?php echo e(single_price($order_package->order->grand_total)); ?></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="order_details_iner">
                                            <div class="order_item">
                                                <?php $__currentLoopData = $order_package->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $package_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <div class="single_order_item">
                                                        <div class="order_item_name">
                                                            <div class="product_img_div">
                                                                <?php if(@$package_product->seller_product_sku->sku->product->product_type == 1): ?>
                                                                <img src="<?php echo e(showImage(@$package_product->seller_product_sku->product->thum_img??@$package_product->seller_product_sku->sku->product->thumbnail_image_source)); ?>" alt="#">
                                                                <?php else: ?>

                                                                    <img src="<?php echo e(showImage((@$package_product->seller_product_sku->sku->variant_image?@$package_product->seller_product_sku->sku->variant_image:@$package_product->seller_product_sku->product->thum_img)??@$package_product->seller_product_sku->product->product->thumbnail_image_source)); ?>" alt="#">
                                                                <?php endif; ?>
                                                            </div>

                                                           <p><?php if(@$package_product->seller_product_sku->product->product_name): ?> <?php echo e(substr(@$package_product->seller_product_sku->product->product_name,0,22)); ?> <?php if(strlen(@$package_product->seller_product_sku->product->product_name) > 22): ?>... <?php endif; ?> <?php else: ?> <?php echo e(substr(@$package_product->seller_product_sku->sku->product->product_name,0,22)); ?> <?php if(strlen(@$package_product->seller_product_sku->sku->product->product_name) > 22): ?>... <?php endif; ?> <?php endif; ?></p>

                                                            <?php if($package_product->seller_product_sku->sku->product->product_type == 2): ?>
                                                                <br>
                                                               <p>

                                                                   <?php
                                                                       $countCombinatiion = count(@$package_product->seller_product_sku->product_variations);
                                                                   ?>
                                                                   <?php $__currentLoopData = @$package_product->seller_product_sku->product_variations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $combination): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                   <?php if($combination->attribute->name == 'Color'): ?>
                                                                   <?php echo e($combination->attribute->name); ?>: <?php echo e($combination->attribute_value->color->name); ?>

                                                                   <?php else: ?>
                                                                   <?php echo e($combination->attribute->name); ?>: <?php echo e($combination->attribute_value->value); ?>

                                                                   <?php endif; ?>

                                                                   <?php if($countCombinatiion > $key +1): ?>
                                                                   ,
                                                                   <?php endif; ?>
                                                                   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


                                                               </p>
                                                               <?php endif; ?>

                                                        </div>
                                                        <p><?php echo e($package_product->qty); ?> X <?php echo e(single_price($package_product->price)); ?></p>

                                                    </div>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </div>
                                            <div class="order_details_btn">
                                                <a href="<?php echo e(route('frontend.my_purchase_order_detail', encrypt($order_package->order->id))); ?>" target="_blank" class="btn_2"><?php echo e(__('defaultTheme.order_details')); ?></a>
                                                <a href="#" class="btn_2"><?php echo e(__('defaultTheme.contact_seller')); ?></a>
                                                <a class="btn_2 change_delivery_state_status pointer" data-package-id="<?php echo e($order_package->id); ?>"><?php echo e(__('defaultTheme.confirm_receive_items')); ?></a>
                                                <?php if(\Carbon\Carbon::now() <= $order_package->order->created_at->addDays(app('business_settings')->where('type', 'refund_times')->first()->status)): ?>
                                                    <a href="<?php echo e(route('refund.make_request', encrypt($order_package->order->id))); ?>" class="btn_2"><?php echo e(__('defaultTheme.open_dispute')); ?></a>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php echo $__env->make(theme('pages.profile.partials.paginations'), ['orders' => $to_shippeds, 'request_type' => request()->toShipped], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="toRecieveData">
                            <div class="box_header common_table_header ">
                                <div class="main-title d-md-flex">
                                    <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('customer_panel.to_recieve')); ?></h3>
                                </div>
                            </div>
                            <div class="order_details">
                                <?php $__currentLoopData = $to_recieves; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $order_package): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="single_order_part">
                                        <div class="order_details_status">
                                            <ul class="w-100">
                                                <li>
                                                    <p><span><?php echo e(__('common.order_id')); ?></span>: <?php echo e($order_package->order->order_number); ?></p>
                                                    <p><span><?php echo e(__('defaultTheme.order_date')); ?></span>: <?php echo e($order_package->order->created_at); ?></p>
                                                </li>
                                                <li>
                                                    <?php if($order_package->order->is_confirmed == 1): ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.confirmed')); ?></p>
                                                    <?php elseif($no_paid_order->is_confirmed == 2): ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.declined')); ?></p>
                                                    <?php else: ?>
                                                        <p><span><?php echo e(__('common.status')); ?></span>: <?php echo e(__('common.pending')); ?></p>
                                                    <?php endif; ?>
                                                </li>
                                                <li>
                                                    <p><span><?php echo e(__('defaultTheme.order_amount')); ?></span>: <?php echo e(single_price($order_package->order->grand_total)); ?></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="order_details_iner">
                                            <div class="order_item">
                                                <?php $__currentLoopData = $order_package->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $package_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <div class="single_order_item">
                                                        <div class="order_item_name">
                                                            <div class="product_img_div">
                                                                <?php if(@$package_product->seller_product_sku->sku->product->product_type == 1): ?>
                                                                    <img src="<?php echo e(showImage(@$package_product->seller_product_sku->product->thum_img??@$package_product->seller_product_sku->sku->product->thumbnail_image_source)); ?>" alt="#">
                                                                <?php else: ?>

                                                                    <img src="<?php echo e(showImage((@$package_product->seller_product_sku->sku->variant_image?@$package_product->seller_product_sku->sku->variant_image:@$package_product->seller_product_sku->product->thum_img)??@$package_product->seller_product_sku->product->product->thumbnail_image_source)); ?>" alt="#">
                                                                <?php endif; ?>
                                                            </div>

                                                           <p><?php if(@$package_product->seller_product_sku->product->product_name): ?> <?php echo e(substr(@$package_product->seller_product_sku->product->product_name,0,22)); ?> <?php if(strlen(@$package_product->seller_product_sku->product->product_name) > 22): ?>... <?php endif; ?> <?php else: ?> <?php echo e(substr(@$package_product->seller_product_sku->sku->product->product_name,0,22)); ?> <?php if(strlen(@$package_product->seller_product_sku->sku->product->product_name) > 22): ?>... <?php endif; ?> <?php endif; ?></p>

                                                            <?php if($package_product->seller_product_sku->sku->product->product_type == 2): ?>
                                                                <br>
                                                               <p>

                                                                   <?php
                                                                       $countCombinatiion = count(@$package_product->seller_product_sku->product_variations);
                                                                   ?>
                                                                   <?php $__currentLoopData = @$package_product->seller_product_sku->product_variations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $combination): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                   <?php if($combination->attribute->name == 'Color'): ?>
                                                                   <?php echo e($combination->attribute->name); ?>: <?php echo e($combination->attribute_value->color->name); ?>

                                                                   <?php else: ?>
                                                                   <?php echo e($combination->attribute->name); ?>: <?php echo e($combination->attribute_value->value); ?>

                                                                   <?php endif; ?>

                                                                   <?php if($countCombinatiion > $key +1): ?>
                                                                   ,
                                                                   <?php endif; ?>
                                                                   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


                                                               </p>
                                                               <?php endif; ?>
                                                        </div>
                                                        <p><?php echo e($package_product->qty); ?> X <?php echo e(single_price($package_product->price)); ?></p>
                                                    </div>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </div>
                                            <div class="order_details_btn">
                                                <a href="<?php echo e(route('frontend.my_purchase_order_detail', encrypt($order_package->order->id))); ?>" class="btn_2"><?php echo e(__('defaultTheme.order_details')); ?></a>
                                                <a href="#" class="btn_2"><?php echo e(__('defaultTheme.contact_seller')); ?></a>
                                                <a class="btn_2 change_delivery_state_status pointer" data-package-id="<?php echo e($order_package->id); ?>"><?php echo e(__('defaultTheme.confirm_receive_items')); ?></a>
                                                <?php if(\Carbon\Carbon::now() <= $order_package->order->created_at->addDays(app('business_settings')->where('type', 'refund_times')->first()->status)): ?>
                                                    <a href="<?php echo e(route('refund.make_request', encrypt($order_package->order->id))); ?>" class="btn_2"><?php echo e(__('defaultTheme.open_dispute')); ?></a>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php echo $__env->make(theme('pages.profile.partials.paginations'), ['orders' => $to_recieves, 'request_type' => request()->toRecievedList], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>
<?php $__env->startPush('scripts'); ?>
    <script type="text/javascript">
        $(document).on('click','.change_delivery_state_status', function(){
            change_delivery_state_status($(this).attr('data-package-id'));
        });
        function change_delivery_state_status(el)
        {
            $("#pre-loader").show();
            $.post('<?php echo e(route('change_delivery_status_by_customer')); ?>', {_token:'<?php echo e(csrf_token()); ?>', package_id:el}, function(data){
                if (data == 1) {
                    toastr.success("<?php echo e(__('defaultTheme.order_has_been_recieved')); ?>", "<?php echo e(__('common.success')); ?>");
                }else {
                    toastr.error("<?php echo e(__('defaultTheme.order_not_recieved')); ?> <?php echo e(__('common.error_message')); ?>", "<?php echo e(__('common.error')); ?>");
                }
                $("#pre-loader").hide();
            });
        }
        $(document).on('click','.order_cancel',function(){
            orderCancelById($(this).attr('data-order-id'));
        });
        $(document).on('change','#rn',function(){
            $("#rnForm").submit();
        });

        function orderCancelById(el)
        {
            $("#pre-loader").show();
            var status = 1;
            $.post('<?php echo e(route('frontend.order_cancel_by_customer')); ?>', {_token:'<?php echo e(csrf_token()); ?>', id:el, status:status}, function(data){
                if (data == 1) {
                    toastr.success("<?php echo e(__('defaultTheme.order_has_been_cancelled')); ?>", "<?php echo e(__('common.success')); ?>");
                }else {
                    toastr.error("<?php echo e(__('defaultTheme.order_cancellation_has_failed')); ?> <?php echo e(__('common.error_message')); ?>", "<?php echo e(__('common.error_message')); ?>");
                }
                $("#pre-loader").hide();
            });
        }
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/backEnd/pages/customer_data/order.blade.php ENDPATH**/ ?>