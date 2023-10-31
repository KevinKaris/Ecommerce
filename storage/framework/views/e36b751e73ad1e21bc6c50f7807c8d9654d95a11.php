
<?php $__env->startSection('styles'); ?>

<link rel="stylesheet" href="<?php echo e(asset(asset_path('modules/multivendor/css/style.css'))); ?>" />
<?php $__env->stopSection(); ?>
<?php $__env->startSection('mainContent'); ?>
<section class="mb-40">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 mb_10">
                <div class="main-title d-flex">
                    <h3 class="mb-0 mr-3 text-nowrap"><?php echo e(__('common.summary')); ?></h3>
                    <ul class="d-flex">
                        <?php if(getParentSeller()->slug): ?>
                        <li><a href="<?php echo e(route('frontend.seller',getParentSeller()->slug)); ?>" target="_blank"
                                class="primary-btn radius_30px mr-10 fix-gr-bg"><?php echo e(__('dashboard.shop_link')); ?></a></li>
                        <?php else: ?>
                        <li><a href="<?php echo e(route('frontend.seller',base64_encode(getParentSellerId()))); ?>"target="_blank"
                            class="primary-btn radius_30px mr-10 fix-gr-bg"><?php echo e(__('dashboard.shop_link')); ?></a></li>
                        <?php endif; ?>
                        <?php if(@$sellerAccount->seller_commission_id == 3): ?>
                            <?php
                                $current_date = strtotime(date("Y-m-d"));
                                $expiry_date = strtotime($subscription->expiry_date?$subscription->expiry_date:'1970-01-01');
                            ?>
                            <?php if(isset($subscription) && @$sellerAccount->seller_commission_id == 3 &&
                            $subscription->is_paid == 0 || isset($subscription) && $sellerAccount->seller_commission_id == 3 &&
                            $subscription->is_paid == 1 && $expiry_date < $current_date): ?>
                                <?php if(permissionCheck('seller.subscription_payment_select')): ?>
                                <li><a href="<?php echo e(route('seller.subscription_payment_select',encrypt($subscription->id))); ?>" target="_blank"
                                        class="primary-btn radius_30px mr-10 pay_for_subscription"><?php echo e(__('common.pay_first_for_subcription')); ?></a>
                                </li>
                                <?php endif; ?>
                            <?php endif; ?>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
            <?php if(permissionCheck('seller_widgets')): ?>
            <div class="col-lg-8 col-md-8 col-sm-12">
                <div class="float-md-right float-none pos_tab_btn justify-content-end">
                    <ul class="nav">
                        <li class="nav-item mb_5">
                            <a class="nav-link filtering active" data-type="today"
                                href="javascript:void(0)"><?php echo e(__('dashboard.today')); ?></a>
                        </li>
                        <li class="nav-item mb_5">
                            <a class="nav-link filtering" data-type="week"
                                href="javascript:void(0)"><?php echo e(__('dashboard.this_week')); ?></a>
                        </li>
                        <li class="nav-item mb_5">
                            <a class="nav-link filtering" data-type="month"
                                href="javascript:void(0)"><?php echo e(__('dashboard.this_month')); ?></a>
                        </li>
                        <li class="nav-item mb_5">
                            <a class="nav-link filtering" data-type="year"
                                href="javascript:void(0)"><?php echo e(__('dashboard.this_year')); ?></a>
                        </li>
                    </ul>
                </div>
            </div>
            <?php endif; ?>
        </div>
        <?php if(permissionCheck('seller_widgets')): ?>
        <div class="row mb_30">
            <?php if(app('dashboard_setup')->where('type', 'total_product_card')->first()->is_active &&
            permissionCheck('seller_widgets_total_product')): ?>
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                <div
                    class="white-box single-summery <?php if(app('dashboard_setup')->where('type', 'total_products')->first()->is_active == 1): ?> active <?php elseif(app('dashboard_setup')->where('type', 'total_products')->first()->is_active == 2): ?> bg_active <?php endif; ?>">
                    <a <?php if(Auth::user()->role->type == "seller"): ?>
                        href="<?php echo e(route('seller.product.index')); ?>"
                        <?php else: ?>
                        href="<?php echo e(route('product.index')); ?>"
                        <?php endif; ?>
                        target="_blank">
                        <div class="d-block mt-10">
                            <h3><?php echo e(__('dashboard.total_product')); ?> </h3>
                            <img class="demo_wait d-none" height="60px"
                                src="<?php echo e(showImage('backend/img/loader.gif')); ?>" alt="">
                            <h1 class="gradient-color2 total_products"><?php echo e($total_products); ?></h1>
                        </div>
                    </a>
                </div>
            </div>
            <?php endif; ?>
            <?php if(app('dashboard_setup')->where('type', 'total_order_card')->first()->is_active &&
            permissionCheck('seller_widgets_total_order')): ?>
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                <div
                    class="white-box single-summery <?php if(app('dashboard_setup')->where('type', 'total_order')->first()->is_active == 1): ?> active <?php elseif(app('dashboard_setup')->where('type', 'total_order')->first()->is_active == 2): ?> bg_active  <?php endif; ?>">
                    <a <?php if(Auth::user()->role->type == "seller" && isModuleActive('MultiVendor')): ?>
                        href="<?php echo e(route('order_manage.my_sales_index')); ?>"
                        <?php else: ?>
                        href="<?php echo e(route('order_manage.total_sales_index')); ?>"
                        <?php endif; ?>

                        target="_blank">
                        <div class="d-block mt-10">
                            <h3><?php echo e(__('dashboard.total_order')); ?></h3>
                            <img class="demo_wait d-none" height="60px"
                                src="<?php echo e(showImage('backend/img/loader.gif')); ?>" alt="">
                            <h1 class="gradient-color2 total_orders"><?php echo e($total_orders); ?></h1>
                        </div>
                    </a>
                </div>
            </div>
            <?php endif; ?>
            <?php if(app('dashboard_setup')->where('type', 'total_pending_order_card')->first()->is_active &&
            permissionCheck('seller_widgets_total_delivery_order')): ?>
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                <div
                    class="white-box single-summery <?php if(app('dashboard_setup')->where('type', 'pending_order')->first()->is_active == 1): ?> active <?php elseif(app('dashboard_setup')->where('type', 'pending_order')->first()->is_active == 2): ?> bg_active  <?php endif; ?>">
                    <a <?php if(Auth::user()->role->type == "seller" && isModuleActive('MultiVendor')): ?>
                        href="<?php echo e(route('order_manage.my_sales_index')); ?>"
                        <?php else: ?>
                        href="<?php echo e(route('order_manage.total_sales_index')); ?>"
                        <?php endif; ?>

                        target="_blank">
                        <div class="d-block mt-10">
                            <h3><?php echo e(__('dashboard.total_delivered_order')); ?></h3>
                            <img class="demo_wait d-none" height="60px"
                                src="<?php echo e(showImage('backend/img/loader.gif')); ?>" alt="">
                            <h1 class="gradient-color2 total_delivered_order"><?php echo e($total_delivered_orders); ?></h1>
                        </div>
                    </a>
                </div>
            </div>
            <?php endif; ?>
            <?php if(app('dashboard_setup')->where('type', 'total_pending_order_card')->first()->is_active &&
            permissionCheck('seller_widgets_non_total_delivery_order')): ?>
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                <div
                    class="white-box single-summery <?php if(app('dashboard_setup')->where('type', 'pending_order')->first()->is_active == 1): ?> active <?php elseif(app('dashboard_setup')->where('type', 'pending_order')->first()->is_active == 2): ?> bg_active  <?php endif; ?>">
                    <a <?php if(Auth::user()->role->type == "seller"): ?>
                        href="<?php echo e(route('order_manage.my_sales_index')); ?>"
                        <?php else: ?>
                        href="<?php echo e(route('order_manage.total_sales_index')); ?>"
                        <?php endif; ?>

                        target="_blank">
                        <div class="d-block mt-10">
                            <h3><?php echo e(__('dashboard.total_non_delivered_order')); ?></h3>
                            <img class="demo_wait d-none" height="60px"
                                src="<?php echo e(showImage('backend/img/loader.gif')); ?>" alt="">
                            <h1 class="gradient-color2 total_not_delivered_orders"><?php echo e($total_not_delivered_orders); ?>

                            </h1>
                        </div>
                    </a>
                </div>
            </div>
            <?php endif; ?>
            <?php if(app('dashboard_setup')->where('type', 'total_completed_order_card')->first()->is_active &&
            permissionCheck('seller_widgets_total_sale')): ?>
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                <div
                    class="white-box single-summery <?php if(app('dashboard_setup')->where('type', 'completed_order')->first()->is_active == 1): ?> active <?php elseif(app('dashboard_setup')->where('type', 'completed_order')->first()->is_active == 2): ?> bg_active  <?php endif; ?>">
                    <a <?php if(Auth::user()->role->type == "seller" && isModuleActive('MultiVendor')): ?>
                        href="<?php echo e(route('order_manage.my_sales_index')); ?>"
                        <?php else: ?>
                        href="<?php echo e(route('order_manage.total_sales_index')); ?>"
                        <?php endif; ?>

                        target="_blank">
                        <div class="d-block mt-10">
                            <h3><?php echo e(__('dashboard.total_sale')); ?></h3>
                            <img class="demo_wait d-none" height="60px"
                                src="<?php echo e(showImage('backend/img/loader.gif')); ?>" alt="">
                            <h1 class="gradient-color2 total_sale"><?php echo e(single_price($total_sale)); ?></h1>
                        </div>
                    </a>
                </div>
            </div>
            <?php endif; ?>
            <?php if(app('dashboard_setup')->where('type', 'total_review_card')->first()->is_active &&
            permissionCheck('seller_widgets_shop_review')): ?>
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                <div
                    class="white-box single-summery <?php if(app('dashboard_setup')->where('type', 'total_review')->first()->is_active == 1): ?> active <?php elseif(app('dashboard_setup')->where('type', 'total_sale')->first()->is_active == 2): ?> bg_active  <?php endif; ?>">
                    <div class="d-block mt-10">
                        <h3><?php echo e(__('dashboard.shop_review')); ?></h3>
                        <img class="demo_wait d-none" height="60px"
                            src="<?php echo e(showImage('backend/img/loader.gif')); ?>" alt="">
                        <h1 class="gradient-color2 shop_review"><?php echo e($shop_review); ?></h1>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php if(app('dashboard_setup')->where('type', 'total_revenue_card')->first()->is_active &&
            permissionCheck('seller_widgets_total_product_refund')): ?>
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                <div
                    class="white-box single-summery <?php if(app('dashboard_setup')->where('type', 'total_revenue')->first()->is_active == 1): ?> active <?php elseif(app('dashboard_setup')->where('type', 'total_sale')->first()->is_active == 2): ?> bg_active  <?php endif; ?>">
                    <div class="d-block mt-10">
                        <h3><?php echo e(__('dashboard.total_product_refund')); ?></h3>
                        <img class="demo_wait d-none" height="60px"
                            src="<?php echo e(showImage('backend/img/loader.gif')); ?>" alt="">
                        <h1 class="gradient-color2 total_refund"><?php echo e(single_price($total_refund)); ?></h1>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php if(app('dashboard_setup')->where('type', 'total_revenue_card')->first()->is_active &&
            permissionCheck('seller_widgets_total_product_refund')): ?>
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                <div
                    class="white-box single-summery <?php if(app('dashboard_setup')->where('type', 'total_revenue')->first()->is_active == 1): ?> active <?php elseif(app('dashboard_setup')->where('type', 'total_sale')->first()->is_active == 2): ?> bg_active  <?php endif; ?>">
                    <div class="d-block mt-10">
                        <h3><?php echo e(__('Total Commision')); ?></h3>
                        <img class="demo_wait d-none" height="60px"
                            src="<?php echo e(showImage('backend/img/loader.gif')); ?>" alt="">
                        <h1 class="gradient-color2 total_commision"><?php echo e(single_price($total_commision)); ?></h1>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php if(app('general_setting')->seller_wise_payment): ?>
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                <div
                    class="white-box single-summery ">
                    <a href="<?php echo e(route('seller.order-commssion-for-admin')); ?>" class="d-block mt-10">
                        <h3><?php echo e(__('Order Commission For Pay')); ?></h3>
                        <img class="demo_wait d-none" height="60px"
                            src="<?php echo e(showImage('backend/img/loader.gif')); ?>" alt="">
                        <h1 class="gradient-color2 total_commision"><?php echo e(single_price($order_commission_for_admin)); ?></h1>
                    </a>
                </div>
            </div>
            <?php endif; ?>
        </div>

        <?php endif; ?>

        <?php if(permissionCheck('seller_graphs')): ?>
        <div class="row mb_30 <?php if(permissionCheck('seller_widgets')): ?> <?php else: ?> mt-30 <?php endif; ?>">
            <?php if(permissionCheck('seller_graphs_total_order_summary')): ?>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="white_box_30px mb_30 graph_dashboard">
                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('dashboard.total_order_summary')); ?></h3>
                        </div>
                    </div>
                    <div class="chart_pie_box">
                        <canvas height="150" id="traffic-chart_a"></canvas>
                        <div class="sales_value_legend" id="traffic-chart-legend_a"></div>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php if(permissionCheck('seller_graphs_total_sale_summary')): ?>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="white_box_30px mb_30 graph_dashboard">
                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('dashboard.total_sale_summary')); ?></h3>
                        </div>
                    </div>
                    <div class="chart_pie_box">
                        <canvas height="150" id="traffic-chart2"></canvas>
                    </div>
                    <div class="sales_value_legend" id="traffic-chart-legend2"></div>
                </div>
            </div>
            <?php endif; ?>
            <?php if(permissionCheck('seller_graphs_sales_vs_refund')): ?>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="white_box_30px mb_30 graph_dashboard">
                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('dashboard.sale_vs_refund')); ?></h3>
                        </div>
                    </div>
                    <div class="chart_pie_box">
                        <canvas height="150" id="traffic-chart3"></canvas>
                    </div>
                    <div class="sales_value_legend" id="traffic-chart-legend3"></div>
                </div>
            </div>
            <?php endif; ?>

        </div>
        <?php endif; ?>


        <div class="row mb_30">
            <?php if(permissionCheck('seller_top_sale_products')): ?>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="white_box_30px mb_30">
                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('dashboard.top_sale_products')); ?></h3>
                        </div>
                    </div>
                    <div class="QA_section QA_section_heading_custom check_box_table">
                        <div class="QA_table ">
                            <!-- table-responsive -->
                            <div class="">
                                <table class="table Crm_table_active4">
                                    <thead>
                                        <tr>
                                            <th scope="col"><?php echo e(__('common.name')); ?></th>
                                            <th scope="col"><?php echo e(__('common.brand')); ?></th>
                                            <th scope="col"><?php echo e(__('dashboard.total_sale')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $__currentLoopData = $top_sale_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $top_ten_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><a href="<?php echo e(singleProductURL($top_ten_product->seller->slug, $top_ten_product->slug)); ?>"
                                                    target="_blank"><?php echo e($top_ten_product->product->product_name); ?></a></td>

                                            <td><?php echo e($top_ten_product->product->brand->name); ?></td>
                                            <td><?php echo e($top_ten_product->total_sale); ?></td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php if(permissionCheck('seller_latest_uploaded_products')): ?>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="white_box_30px mb_30">
                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('dashboard.latest_uploaded_products')); ?>

                            </h3>
                        </div>
                    </div>
                    <div class="QA_section QA_section_heading_custom check_box_table">
                        <div class="QA_table ">
                            <!-- table-responsive -->
                            <div class="">
                                <table class="table Crm_table_active4">
                                    <thead>
                                        <tr>
                                            <th scope="col"><?php echo e(__('common.name')); ?></th>
                                            <th scope="col"><?php echo e(__('common.brand')); ?></th>
                                            <th scope="col"><?php echo e(__('dashboard.total_sale')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $__currentLoopData = $latest_uploaded_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><a href="<?php echo e(singleProductURL($product->seller->slug, $product->slug)); ?>"
                                                    target="_blank"><?php echo e($product->product->product_name); ?></a>
                                            </td>
                                            <td><?php echo e($product->product->brand->name); ?></td>
                                            <td><?php echo e($product->total_sale); ?></td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php if(permissionCheck('seller_latest_orders')): ?>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="white_box_30px mb_30">
                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('dashboard.latest_order')); ?></h3>
                            <ul class="d-flex">
                                <li><a href="<?php echo e(route('order_manage.my_sales_index')); ?>" target="_blank"
                                        class="primary-btn radius_30px mr-10 fix-gr-bg"><?php echo e(__('common.see_all')); ?></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="QA_section QA_section_heading_custom check_box_table">
                        <div class="QA_table ">
                            <!-- table-responsive -->
                            <div class="">
                                <table class="table Crm_table_active4">
                                    <thead>
                                        <tr>
                                            <th width="10%"><?php echo e(__('common.date')); ?></th>
                                            <th><?php echo e(__('common.order_id')); ?></th>
                                            <th><?php echo e(__('order.order_state')); ?></th>
                                            <th><?php echo e(__('common.total_amount')); ?></th>
                                            <th><?php echo e(__('common.action')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $__currentLoopData = $latest_orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $latest_order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td class="nowrap">
                                                <?php echo e(date(app('general_setting')->dateFormat->format, strtotime($latest_order->order->created_at))); ?>

                                            </td>
                                            <td><?php echo e(@$latest_order->order->order_number); ?></td>
                                            <td>
                                                <?php if($latest_order->order->is_confirmed == 1): ?>
                                                <h6><span class="badge_1"><?php echo e(__('common.confirmed')); ?></span></h6>
                                                <?php elseif($latest_order->order->is_confirmed == 2): ?>
                                                <h6><span class="badge_4"><?php echo e(__('common.declined')); ?></span></h6>
                                                <?php else: ?>
                                                <h6><span class="badge_4"><?php echo e(__('common.pending')); ?></span></h6>
                                                <?php endif; ?>
                                            </td>
                                            <td>
                                                <?php echo e(single_price($latest_order->products->sum('total_price') + $latest_order->shipping_cost + $latest_order->tax_amount)); ?>

                                            </td>
                                            <td>
                                                <a href="<?php if(auth()->user()->role->type == 'seller'): ?> <?php echo e(route('order_manage.show_details_mine',$latest_order->id)); ?> <?php else: ?> <?php echo e(route('order_manage.show_details',$latest_order->id)); ?> <?php endif; ?>"
                                                    class="primary_btn_2" type="button" target="_blank"><i
                                                        class="ti-eye"></i><?php echo e(__('common.details')); ?></a>
                                            </td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php if(permissionCheck('seller_latest_refund_request')): ?>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="white_box_30px mb_30">
                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('dashboard.latest_refund_request')); ?>

                            </h3>
                            <ul class="d-flex">
                                <li><a href="<?php echo e(route('refund.my_refund_list')); ?>" target="_blank"
                                        class="primary-btn radius_30px mr-10 fix-gr-bg"><?php echo e(__('common.see_all')); ?></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="QA_section QA_section_heading_custom check_box_table">
                        <div class="QA_table ">
                            <!-- table-responsive -->
                            <div class="">
                                <table class="table Crm_table_active4">
                                    <thead>
                                        <tr>
                                            <th><?php echo e(__('common.date')); ?></th>
                                            <th><?php echo e(__('common.order_id')); ?></th>
                                            <th><?php echo e(__('common.total_amount')); ?></th>
                                            <th><?php echo e(__('dashboard.request_status')); ?></th>
                                            <th><?php echo e(__('dashboard.is_refunded')); ?></th>
                                            <th><?php echo e(__('dashboard.action')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $__currentLoopData = $latest_refund_requests; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $latest_refund): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td class="nowrap">
                                                <?php echo e(date(app('general_setting')->dateFormat->format, strtotime($latest_refund->created_at))); ?>

                                            </td>
                                            <td><?php echo e(@$latest_refund->order->order_number); ?></td>
                                            <td>
                                                <?php echo e(single_price($latest_refund->total_return_amount)); ?>

                                            </td>
                                            <td>
                                                <?php if($latest_refund->is_confirmed == 1): ?>
                                                <h6><span class="badge_1"><?php echo e(__('common.confirmed')); ?></span></h6>
                                                <?php elseif($latest_refund->is_confirmed == 2): ?>
                                                <h6><span class="badge_4"><?php echo e(__('common.declined')); ?></span></h6>
                                                <?php else: ?>
                                                <h6><span class="badge_4"><?php echo e(__('common.pending')); ?></span></h6>
                                                <?php endif; ?>
                                            </td>
                                            <td>
                                                <?php if($latest_refund->is_refunded == 1): ?>
                                                <h6><span class="badge_1"><?php echo e(__('common.refunded')); ?></span></h6>
                                                <?php else: ?>
                                                <h6><span class="badge_4"><?php echo e(__('common.pending')); ?></span></h6>
                                                <?php endif; ?>
                                            </td>
                                            <td>
                                                <a href="<?php echo e(route('refund.refund_show_details',$latest_refund->id)); ?>"
                                                    class="primary_btn_2" type="button" target="_blank"><i
                                                        class="ti-eye"></i><?php echo e(__('common.details')); ?></a>
                                            </td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php endif; ?>

            <?php if(isset($subscription) && permissionCheck('seller_subscription_payments')): ?>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="white_box_30px mb_30">
                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('dashboard.subscription_payments')); ?>

                            </h3>

                        </div>
                    </div>
                    <div class="QA_section QA_section_heading_custom check_box_table">
                        <div class="QA_table ">
                            <!-- table-responsive -->
                            <div class="">
                                <table class="table Crm_table_active4">
                                    <thead>
                                        <tr>
                                            <th><?php echo e(__('common.date')); ?></th>
                                            <th><?php echo e(__('common.name')); ?></th>
                                            <th><?php echo e(__('common.total_amount')); ?></th>
                                            <th><?php echo e(__('common.payment_type')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <?php $__currentLoopData = $subscription_payment; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $payment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td class="nowrap">
                                                <?php echo e(date(app('general_setting')->dateFormat->format, strtotime($payment->created_at))); ?>

                                            </td>
                                            <td><?php echo e(@$payment->subscription_payment->commission_type); ?></td>
                                            <td>
                                                <?php echo e(single_price($payment->amount)); ?>

                                            </td>
                                            <td>
                                                <?php echo e(@$payment->subscription_payment->subscription_type); ?>

                                            </td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php endif; ?>
        </div>
        <input type="hidden" id="graph_total_orders" value="<?php echo e($graph_total_orders); ?>">
        <input type="hidden" id="graph_total_delivered_orders" value="<?php echo e($graph_total_delivered_orders); ?>">
        <input type="hidden" id="graph_total_not_delivered_orders" value="<?php echo e($graph_total_not_delivered_orders); ?>">
        <input type="hidden" id="graph_total_shipping" value="<?php echo e($graph_total_shipping); ?>">
        <input type="hidden" id="graph_total_tax" value="<?php echo e($graph_total_tax); ?>">
        <input type="hidden" id="graph_total_net_sale" value="<?php echo e($graph_total_net_sale); ?>">
        <input type="hidden" id="graph_total_sale" value="<?php echo e($graph_total_sale); ?>">
        <input type="hidden" id="graph_total_refund" value="<?php echo e($graph_total_refund); ?>">
</section>
<?php $__env->stopSection(); ?>
<?php $__env->startPush('scripts'); ?>
<script type="text/javascript">
    (function($) {
          "use strict";
          $(document).on('click', '.filtering', function () {
              $('.filtering').removeClass('active');
              $(this).addClass('active');
              let type = $(this).data('type');
              $('.gradient-color2').hide();
              $('.demo_wait').removeClass('d-none');
              $.ajax({
                  method: "get",
                  url: "<?php echo e(url('seller/seller-dashboard-cards-info')); ?>" + "/" + type,
                  success: function (data) {
                      $('.total_sale').text(data.total_sale);
                      $('.total_orders').text(data.total_orders);
                      $('.total_delivered_order').text(data.total_delivered_orders);
                      $('.total_not_delivered_orders').text(data.total_not_delivered_orders);
                      $('.shop_review').text(data.shop_review);
                      $('.total_refund').text(data.total_refund);
                      $('.total_commision').text(data.total_commision);
                      $('.gradient-color2').show();
                      $('.demo_wait').addClass('d-none');
                  }
              })
          });
          $(function() {
            Chart.defaults.global.legend.labels.usePointStyle = true;
            if (document.getElementById('traffic-chart_a') != null) {
                var ctx = document.getElementById('traffic-chart_a').getContext("2d");
                if ($("#traffic-chart_a").length) {

                  var trafficChartData = {
                    datasets: [{
                      data: [$('#graph_total_orders').val(), $('#graph_total_delivered_orders').val(), $('#graph_total_not_delivered_orders').val()],
                      backgroundColor: [
                        "#d5d1fc",
                        "#b044cf",
                        "#c7eaee"
                      ],
                      hoverBackgroundColor: [
                          "#d5d1fc",
                          "#b044cf",
                          "#c7eaee"
                      ],
                      borderColor: [
                        "transparent",
                        "transparent",
                        "transparent"
                      ],
                      legendColor: [
                        "#d5d1fc",
                        "#b044cf",
                        "#c7eaee"
                      ]
                    }],

                    // These labels appear in the legend and in the tooltips when hovering different arcs
                    labels: [
                      'Total',
                      'Delivered',
                      'Not Delivered',
                    ]
                  };

                  var trafficChartOptions = {
                    responsive: true,
                    cutoutPercentage: 65,
                    animation: {
                      animateScale: true,
                      animateRotate: true
                    },
                    legend: false,
                    legendCallback: function(chart) {
                      var text = [];
                      text.push('<ul>');
                      for (var i = 0; i < trafficChartData.datasets[0].data.length; i++) {
                          text.push('<li><span class="legend-dots" style="background:' +
                          trafficChartData.datasets[0].legendColor[i] +
                                      '"></span><div class="legend_name"><span>');
                          if (trafficChartData.labels[i]) {
                              text.push(trafficChartData.labels[i]);
                          }
                          text.push('</span><span class="value_legend">'+trafficChartData.datasets[0].data[i]+'</span>')
                          text.push('</div></li>');
                      }
                      text.push('</ul>');
                      return text.join('');
                    }
                  };
                  var trafficChartCanvas = $("#traffic-chart_a").get(0).getContext("2d");
                  var trafficChart = new Chart(trafficChartCanvas, {
                    type: 'doughnut',
                    data: trafficChartData,
                    options: trafficChartOptions
                  });
                  $("#traffic-chart-legend_a").html(trafficChart.generateLegend());
                }
            }
            if (document.getElementById('traffic-chart2') != null) {
                Chart.defaults.global.legend.labels.usePointStyle = true;
                var ctx = document.getElementById('traffic-chart2').getContext("2d");
                if ($("#traffic-chart2").length) {

                  var trafficChartData = {
                    datasets: [{
                      data: [$('#graph_total_net_sale').val(), $('#graph_total_tax').val(), $('#graph_total_shipping').val()],
                      backgroundColor: [
                        "#d5d1fc",
                        "#c7eaee",
                        "#b044cf",
                      ],
                      hoverBackgroundColor: [
                        "#d5d1fc",
                        "#c7eaee",
                        "#b044cf",
                      ],
                      borderColor: [
                        "transparent",
                        "transparent",
                        "transparent",
                      ],
                      legendColor: [
                        "#d5d1fc",
                        "#c7eaee",
                        "#b044cf",
                      ]
                    }],

                    // These labels appear in the legend and in the tooltips when hovering different arcs
                    labels: [
                      'Net Sale',
                      'Tax',
                      'Shipping',
                    ]
                  };

                  var trafficChartOptions = {
                    responsive: true,
                    cutoutPercentage: 65,
                    animation: {
                      animateScale: true,
                      animateRotate: true
                    },
                    legend: false,
                    legendCallback: function(chart) {
                      var text = [];
                      text.push('<ul>');
                      for (var i = 0; i < trafficChartData.datasets[0].data.length; i++) {
                          text.push('<li><span class="legend-dots" style="background:' +
                          trafficChartData.datasets[0].legendColor[i] +
                                      '"></span><div class="legend_name"><span>');
                          if (trafficChartData.labels[i]) {
                              text.push(trafficChartData.labels[i]);
                          }
                          text.push('</span><span class="value_legend">'+"$"+trafficChartData.datasets[0].data[i]+'</span>')
                          text.push('</div></li>');
                      }
                      text.push('</ul>');
                      return text.join('');
                    }
                  };
                  var trafficChartCanvas = $("#traffic-chart2").get(0).getContext("2d");
                  var trafficChart = new Chart(trafficChartCanvas, {
                    type: 'doughnut',
                    data: trafficChartData,
                    options: trafficChartOptions
                  });
                  $("#traffic-chart-legend2").html(trafficChart.generateLegend());
                }
            }
            if (document.getElementById('traffic-chart3') != null) {
                Chart.defaults.global.legend.labels.usePointStyle = true;
                var ctx = document.getElementById('traffic-chart3').getContext("2d");
                if ($("#traffic-chart3").length) {

                  var trafficChartData = {
                    datasets: [{
                      data: [$('#graph_total_sale').val(), $('#graph_total_refund').val()],
                      backgroundColor: [
                        "#d5d1fc",
                        "#c7eaee",
                      ],
                      hoverBackgroundColor: [
                        "#d5d1fc",
                        "#c7eaee",
                      ],
                      borderColor: [
                        "transparent",
                        "transparent",
                      ],
                      legendColor: [
                        "#d5d1fc",
                        "#c7eaee",
                      ]
                    }],

                    // These labels appear in the legend and in the tooltips when hovering different arcs
                    labels: [
                      'Sale Amount',
                      'Refund Amount',
                    ]
                  };

                  var trafficChartOptions = {
                    responsive: true,
                    cutoutPercentage: 65,
                    animation: {
                      animateScale: true,
                      animateRotate: true
                    },
                    legend: false,
                    legendCallback: function(chart) {
                      var text = [];
                      text.push('<ul>');
                      for (var i = 0; i < trafficChartData.datasets[0].data.length; i++) {
                          text.push('<li><span class="legend-dots" style="background:' +
                          trafficChartData.datasets[0].legendColor[i] +
                                      '"></span><div class="legend_name"><span>');
                          if (trafficChartData.labels[i]) {
                              text.push(trafficChartData.labels[i]);
                          }
                          text.push('</span><span class="value_legend">'+"$"+trafficChartData.datasets[0].data[i]+'</span>')
                          text.push('</div></li>');
                      }
                      text.push('</ul>');
                      return text.join('');
                    }
                  };
                  var trafficChartCanvas = $("#traffic-chart3").get(0).getContext("2d");
                  var trafficChart = new Chart(trafficChartCanvas, {
                    type: 'doughnut',
                    data: trafficChartData,
                    options: trafficChartOptions
                  });
                  $("#traffic-chart-legend3").html(trafficChart.generateLegend());
                }
            }
          });
        })(jQuery);

</script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\Modules/MultiVendor\Resources/views/dashboard/index.blade.php ENDPATH**/ ?>