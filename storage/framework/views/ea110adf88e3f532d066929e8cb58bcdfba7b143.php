<?php
    $currency_code = getCurrencyCode();
?>
<div class="checkout_v3_area">
    <div class="checkout_v3_left d-flex justify-content-end">
        <div class="checkout_v3_inner">
            <div class="shiping_address_box checkout_form m-0">
                <div class="billing_address">

                    <div class="row">
                        <div class="col-12">
                            <div class="shipingV3_info mb_30">
                                <div class="single_shipingV3_info d-flex align-items-start">
                                    <span><?php echo e(__('defaultTheme.contact')); ?></span>
                                    <h5 class="m-0 flex-fill">
                                        <?php if(auth()->check()): ?>
                                            <?php echo e(auth()->user()->email != null?auth()->user()->email : auth()->user()->phone); ?>

                                        <?php else: ?>
                                            <?php echo e($address->email); ?>

                                        <?php endif; ?></h5>
                                    <a href="<?php echo e(url('/checkout')); ?>" class="edit_info_text"><?php echo e(__('common.change')); ?></a>
                                </div>
                                <?php
                                    $delivery_info = null;
                                    if(session()->has('delivery_info')){
                                        $delivery_info = session()->get('delivery_info');
                                    }
                                ?>
                                <?php if(!$delivery_info || $delivery_info && $delivery_info['delivery_type'] == 'home_delivery'): ?>
                                    <div class="single_shipingV3_info d-flex align-items-start">
                                        <span><?php echo e(__('defaultTheme.ship_to')); ?></span>
                                        <h5 class="m-0 flex-fill"><?php echo e(@$address->address); ?></h5>
                                        <a href="<?php echo e(url('/checkout')); ?>" class="edit_info_text"><?php echo e(__('common.change')); ?></a>
                                    </div>
                                <?php else: ?>
                                    <div class="single_shipingV3_info d-flex align-items-start">
                                        <span><?php echo e(__('common.billing_address')); ?></span>
                                        <h5 class="m-0 flex-fill"><?php echo e($address->address); ?></h5>
                                        <a href="<?php echo e(url('/checkout')); ?>" class="edit_info_text"><?php echo e(__('common.change')); ?></a>
                                    </div>
                                <?php endif; ?>
                                <?php if(!isModuleActive('MultiVendor')): ?>
                                    <?php if(!$delivery_info || $delivery_info && $delivery_info['delivery_type'] == 'home_delivery'): ?>
                                        <div class="single_shipingV3_info d-flex align-items-start">
                                            <span><?php echo e(__('common.method')); ?></span>
                                            <?php if(isModuleActive('INTShipping')): ?>
                                            <h5 class="m-0 flex-fill"><?php echo e(__('Product wise Shipping')); ?> - <?php echo e(single_price($shipping_cost)); ?></h5>
                                            <a href="<?php echo e(url()->previous()); ?>" class="edit_info_text"><?php echo e(__('common.change')); ?></a>
                                            <?php else: ?>
                                            <h5 class="m-0 flex-fill"><?php echo e($selected_shipping_method->method_name); ?> - <?php echo e(single_price($shipping_cost)); ?></h5>
                                            <a href="<?php echo e(url()->previous()); ?>" class="edit_info_text"><?php echo e(__('common.change')); ?></a>
                                            <?php endif; ?>
                                        </div>
                                    <?php else: ?>
                                        <div class="single_shipingV3_info d-flex align-items-start">
                                            <span><?php echo e(__('common.method')); ?></span>
                                            <h5 class="m-0 flex-fill"><?php echo e(__('shipping.collect_from_pickup_location')); ?> - <?php echo e(single_price(0)); ?></h5>
                                            <a href="<?php echo e(url()->previous()); ?>" class="edit_info_text"><?php echo e(__('common.change')); ?></a>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="col-12 mb_10">
                            <h3 class="check_v3_title2"><?php echo e(__('common.payment')); ?></h3>
                            <h6 class="shekout_subTitle_text"><?php echo e(__('defaultTheme.all_transactions_are_secure_and_encrypted')); ?>.</h6>
                        </div>
                        <div class="col-12">
                            <div class="accordion checkout_acc_style mb_30" id="accordionExample">
                                <?php
                                    if(isset($coupon_amount)){
                                        $coupon_am = $coupon_amount;
                                    }else{
                                        $coupon_am = 0;
                                    }
                                ?>
                                <?php $__currentLoopData = $gateway_activations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $payment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="accordion-item">
                                        <div class="accordion-header" id="headingOne">
                                            <span class="accordion-button shadow-none" data-bs-toggle="collapse" data-bs-target="#collapse<?php echo e($key); ?>"  aria-controls="collapse<?php echo e($key); ?>">
                                                <span>
                                                    <label class="primary_checkbox d-inline-flex style4 gap_10" >
                                                        <input type="radio" name="payment_method" class="payment_method" data-name="<?php echo e($payment->method); ?>" data-id="<?php echo e(encrypt($payment->id)); ?>" value="<?php echo e($payment->id); ?>" <?php echo e($key == 0?'checked':''); ?>>
                                                        <span class="checkmark mr_10"></span>
                                                        <span class="label_name f_w_500 "><?php echo e($payment->method); ?></span>
                                                    </label>
                                                </span>
                                            </span>
                                        </div>
                                        <div id="collapse<?php echo e($key); ?>" class="accordion-collapse collapse <?php echo e($key == 0?'show':''); ?>" aria-labelledby="heading<?php echo e($key); ?>" data-bs-parent="#accordionExample">
                                            <div class="accordion-body" id="acc_<?php echo e($payment->id); ?>">
                                                <!-- content ::start  -->
                                                <div class="row">
                                                    <?php if($payment->method == 'Cash On Delivery'): ?>

                                                    <?php elseif($payment->method == 'Wallet'): ?>
                                                        <div class="col-lg-12 text-center mb_20">
                                                            <strong><?php echo e(__('common.balance')); ?>: <?php echo e(single_price(auth()->user()->CustomerCurrentWalletAmounts)); ?></strong>
                                                        </div>
                                                    <?php elseif($payment->method == 'Stripe'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.stripe_payment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif($payment->method == 'PayPal'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.payment_paypal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif($payment->method == 'PayStack'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.paystack_payment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif($payment->method == 'RazorPay'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.razor_payment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif($payment->method == 'Instamojo'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.instamojo_payment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif($payment->method == 'PayTM'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.paytm_payment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif($payment->method == 'Midtrans'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.midtrans_payment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif($payment->method == 'PayUMoney'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.payumoney_payment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif($payment->method == 'JazzCash'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.jazzcash_payment_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif($payment->method == 'Google Pay'): ?>
                                                        <a class="btn_1 pointer d-none" id="buyButton"><?php echo e(__('wallet.continue_to_pay')); ?></a>
                                                        <?php $__env->startPush('wallet_scripts'); ?>
                                                            <?php echo $__env->make('frontend.amazy.partials.payments.google_pay_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                        <?php $__env->stopPush(); ?>
                                                    <?php elseif($payment->method == 'FlutterWave'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.flutter_payment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif($payment->method == 'Bank Payment'): ?>
                                                        <?php echo $__env->make('frontend.amazy.partials.payments.bank_payment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif(isModuleActive('Bkash') && $payment->method=="Bkash"): ?>
                                                        <?php echo $__env->make('bkash::partials._checkout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif(isModuleActive('MercadoPago') && $payment->method=="Mercado Pago"): ?>
                                                        <?php echo $__env->make('mercadopago::partials._checkout_amazy', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php elseif(isModuleActive('SslCommerz') && $payment->method=="SslCommerz"): ?>
                                                        <?php echo $__env->make('sslcommerz::partials._checkout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    <?php endif; ?>

                                                </div>
                                                <!-- content ::end  -->
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                        <?php
                            $delivery_info = null;
                            if(session()->has('delivery_info')){
                                $delivery_info = session()->get('delivery_info');
                            }
                        ?>
                        <div class="col-12 mb_10 <?php if($delivery_info && $delivery_info['delivery_type'] == 'pickup_location'): ?> d-none <?php endif; ?>">
                            <h3 class="check_v3_title2"><?php echo e(__('common.billing_address')); ?></h3>
                        </div>
                        <div class="col-12 <?php if($delivery_info && $delivery_info['delivery_type'] == 'pickup_location'): ?> d-none <?php endif; ?>">
                            <div class="accordion checkout_acc_style style2 mb_30" id="accordionExample1">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingTwo33">
                                    <span class="accordion-button shadow-none collapsed" data-bs-target="#collapseTwo33" data-bs-toggle="collapse" aria-expanded="<?php echo e($billing_address?'true':'false'); ?>" aria-controls="collapseTwo33">
                                        <label class="primary_checkbox d-inline-flex style4 gap_10">
                                            <input type="radio" name="is_same_billing" value="1" <?php echo e($billing_address?'':'checked'); ?>>
                                            <span class="checkmark mr_10"></span>
                                            <span class="label_name f_w_500 "><?php echo e(__('defaultTheme.same_as_shipping_address')); ?></span>
                                        </label>
                                    </span>
                                    </h2>
                                    <div id="collapseTwo33" class="accordion-collapse collapse" aria-labelledby="headingTwo33" data-bs-parent="#accordionExample1">
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingTwo44">
                                    <span class="accordion-button shadow-none collapsed"  data-bs-toggle="collapse" data-bs-target="#collapseTwo44" aria-expanded="<?php echo e($billing_address?'true':'false'); ?>" aria-controls="collapseTwo44">
                                        <label class="primary_checkbox d-inline-flex style4 gap_10">
                                            <input type="radio" name="is_same_billing" value="0" <?php echo e($billing_address?'checked':''); ?>>
                                            <span class="checkmark mr_10"></span>
                                            <span class="label_name f_w_500 ">
                                            <?php echo e(__('defaultTheme.use_a_different_billing_address')); ?>

                                            </span>
                                        </label>

                                    </span>
                                    </h2>
                                    <div id="collapseTwo44" class="accordion-collapse collapse" aria-labelledby="headingTwo44" data-bs-parent="#accordionExample1">
                                        <div class="accordion-body">
                                            <!-- content ::start  -->
                                            <div class="row">
                                                <?php if(auth()->check()): ?>
                                                    <div class="col-lg-12">
                                                        <div class="form-group">
                                                            <label for="name" class="primary_label2 style2"><?php echo e(__('defaultTheme.address_list')); ?> <span class="text-danger">*</span></label>
                                                            <select class="theme_select style2 wide mb_20" name="address_id" id="address_id">
                                                            <option value="0"><?php echo e(__('defaultTheme.new_address')); ?></option>
                                                                <?php $__currentLoopData = auth()->user()->customerAddresses->where('is_shipping_default',0); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $addresss): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                    <option value="<?php echo e($addresss->id); ?>" <?php if(isset($billing_address) && $billing_address->id == $addresss->id): ?> selected <?php endif; ?> ><?php echo e($addresss->address); ?></option>
                                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                <?php else: ?>
                                                    <input type="hidden" id="address_id" value="0" name="address_id">
                                                <?php endif; ?>
                                                <div class="col-lg-6 mb_20">
                                                    <label class="primary_label2 style3"><?php echo e(__('common.name')); ?> <span>*</span></label>
                                                    <input class="primary_input3 style5 radius_3px" id="name" name="name" value="<?php echo e(isset($billing_address)?$billing_address->name:''); ?>" type="text"  placeholder="<?php echo e(__('common.name')); ?>">
                                                    <span class="text-danger" id="error_name"><?php echo e($errors->first('name')); ?></span>
                                                </div>
                                                <div class="col-lg-6 mb_20">
                                                    <label for="address" class="primary_label2 style3"><?php echo e(__('common.address')); ?> <span>*</span></label>
                                                    <input class="primary_input3 style5 radius_3px" type="text" id="address" name="address"
                                                        placeholder="<?php echo e(__('common.address')); ?>" value="<?php echo e(isset($billing_address)?$billing_address->address:''); ?>">
                                                    <span class="text-danger" id="error_address"><?php echo e($errors->first('address')); ?></span>
                                                </div>
                                                <div class="col-lg-6 mb_20">
                                                    <label class="primary_label2 style3" for="email"><?php echo e(__('common.email')); ?> <span>*</span></label>
                                                    <input class="primary_input3 style5 radius_3px" type="email" name="email" id="email" placeholder="<?php echo e(__('common.email')); ?>" value="<?php echo e(isset($billing_address)?$billing_address->email:''); ?>">
                                                    <span class="text-danger" id="error_email"><?php echo e($errors->first('email')); ?></span>
                                                </div>
                                                <div class="col-lg-6 mb_20">
                                                    <label class="primary_label2 style3" for="phone"><?php echo e(__('common.phone')); ?> <span>*</span></label>
                                                    <input class="primary_input3 style5 radius_3px" type="text" name="phone" value="<?php echo e(isset($billing_address)?$billing_address->phone:''); ?>" id="phone" placeholder="<?php echo e(__('common.phone')); ?>">
                                                    <span class="text-danger" id="error_phone"><?php echo e($errors->first('phone')); ?></span>
                                                </div>
                                                <div class="col-lg-6 mb_20">
                                                    <label class="primary_label2 style3"><?php echo e(__('common.country')); ?> <span>*</span></label>
                                                    <select class="theme_select style2 wide" name="country" id="country" autocomplete="off">
                                                        <option value=""><?php echo e(__('defaultTheme.select_from_options')); ?></option>
                                                        <?php $__currentLoopData = $countries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $country): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <option value="<?php echo e($country->id); ?>" <?php if(isset($billing_address) && $billing_address->country == $country->id): ?> selected <?php elseif(!isset($billing_address) && app('general_setting')->default_country == $country->id): ?> selected <?php endif; ?>><?php echo e($country->name); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </select>
                                                    <span class="text-danger" id="error_country"><?php echo e($errors->first('country')); ?></span>
                                                </div>
                                                <div class="col-lg-6 mb_20">
                                                    <label class="primary_label2 style3"><?php echo e(__('common.state')); ?> <span>*</span></label>
                                                    <select class="theme_select style2 wide" name="state" id="state" autocomplete="off">
                                                        <option value=""><?php echo e(__('defaultTheme.select_from_options')); ?></option>
                                                        <?php if(app('general_setting')->default_country != null): ?>
                                                            <?php $__currentLoopData = $states; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $state): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <option value="<?php echo e($state->id); ?>" <?php if(isset($billing_address) && $billing_address->state == $state->id): ?> selected <?php elseif(app('general_setting')->default_state == $state->id): ?> selected <?php endif; ?>><?php echo e($state->name); ?></option>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        <?php endif; ?>
                                                    </select>
                                                    <span class="text-danger" id="error_state"><?php echo e($errors->first('state')); ?></span>
                                                </div>
                                                <div class="col-lg-6 mb_20">
                                                    <label class="primary_label2 style3"><?php echo e(__('common.city')); ?> <span>*</span></label>
                                                    <select class="theme_select style2 wide" name="city" id="city" autocomplete="off">
                                                        <option value=""><?php echo e(__('defaultTheme.select_from_options')); ?></option>
                                                        <?php $__currentLoopData = $cities; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <option value="<?php echo e($city->id); ?>" <?php if(isset($billing_address) && $billing_address->city == $city->id): ?> selected <?php endif; ?>><?php echo e($city->name); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </select>
                                                    <span class="text-danger" id="error_city"><?php echo e($errors->first('city')); ?></span>
                                                </div>
                                                <div class="col-lg-6 mb_20">
                                                    <label for="postal_code" class="primary_label2 style3"><?php echo e(__('common.postal_code')); ?> <?php if(isModuleActive('ShipRocket')): ?> <span>*</span><?php endif; ?></label>
                                                    <input class="primary_input3 style5 radius_3px" type="text" id="postal_code" name="postal_code" placeholder="<?php echo e(__('common.postal_code')); ?>" value="<?php echo e(isset($billing_address)?$billing_address->postal_code:''); ?>">
                                                    <span class="text-danger" id="error_postal_code"></span>
                                                </div>
                                                <input type="hidden" id="token" value="<?php echo e(csrf_token()); ?>">
                                            </div>
                                            <!-- content ::end  -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="check_v3_btns flex-wrap d-flex align-items-center">
                                <div id="btn_div">
                                    <?php
                                        $payment_id = encrypt(0);
                                        $url = '';
                                        if(count($gateway_activations) > 0 && $gateway_activations[0]->id == 1 || count($gateway_activations) > 0 && $gateway_activations[0]->id == 2){
                                            $gateway_id = (count($gateway_activations) > 0)?encrypt($gateway_activations[0]->id):0;
                                            if($gateway_activations[0]->id == 1){
                                                $url = url('/checkout?').'gateway_id='.$gateway_id.'&payment_id='.$payment_id.'&step=complete_order';
                                                $pay_now_btn = '<a href="javascript:void(0)" data-url="'.$url.'" data-type="CashOnDelivery" id="payment_btn_trigger" class="amaz_primary_btn style2  min_200 text-center text-uppercase">Pay Now</a>';
                                            }elseif($gateway_activations[0]->id == 2){
                                                $url = url('/checkout?').'gateway_id='.$gateway_id.'&payment_id='.$payment_id.'&step=complete_order';
                                                $pay_now_btn = '<a href="javascript:void(0)" data-url="'.$url.'" data-type="Wallet" id="payment_btn_trigger" class="amaz_primary_btn style2  min_200 text-center text-uppercase">Pay Now</a>';
                                            }
                                        }else {
                                            $method = '';
                                            if(count($gateway_activations) > 0){
                                                $method = $gateway_activations[0]->method;
                                            }
                                            $pay_now_btn = '<a href="javascript:void(0)" id="payment_btn_trigger" data-type="'.$method.'" class="amaz_primary_btn style2  min_200 text-center text-uppercase">Pay Now</a>';
                                        }
                                    ?>
                                    <?php echo $pay_now_btn; ?>

                                </div>
                                <input type="hidden" value="<?php echo e(encrypt(0)); ?>" id="off_payment_id">
                                <?php if(isModuleActive('MultiVendor')): ?>
                                    <a href="<?php echo e(url()->previous()); ?>" class="return_text"><?php echo e(__('defaultTheme.return_to_information')); ?></a>
                                <?php else: ?>
                                    <?php if(!$delivery_info || $delivery_info && $delivery_info['delivery_type'] == 'home_delivery'): ?>
                                        <a href="<?php echo e(url()->previous()); ?>" class="return_text"><?php echo e(__('defaultTheme.return_to_shipping')); ?></a>
                                    <?php else: ?>
                                        <a href="<?php echo e(url()->previous()); ?>" class="return_text"><?php echo e(__('defaultTheme.return_to_information')); ?></a>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="checkout_v3_right d-flex justify-content-start">
        <div class="order_sumery_box flex-fill">
            <?php if(!isModuleActive('MultiVendor')): ?>
                <?php
                    $actual_total = 0;
                    $subtotal = 0;
                    $additional_shipping = 0;
                    $tax = 0;
                    $sameStateTaxes = \Modules\GST\Entities\GstTax::whereIn('id', app('gst_config')['within_a_single_state'])->get();
                    $diffStateTaxes = \Modules\GST\Entities\GstTax::whereIn('id', app('gst_config')['between_two_different_states_or_a_state_and_a_Union_Territory'])->get();
                    $flatTax = \Modules\GST\Entities\GstTax::where('id', app('gst_config')['flat_tax_id'])->first();
                ?>
                <?php $__currentLoopData = $cartData; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $cart): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($cart->product_type == 'product'): ?>
                        <div class="singleVendor_product_lists">
                            <div class="singleVendor_product_list d-flex align-items-center">
                                <div class="thumb single_thumb">
                                    <img src="
                                        <?php if($cart->product->product->product->product_type == 1): ?>
                                        <?php echo e(showImage($cart->product->product->product->thumbnail_image_source)); ?>

                                        <?php else: ?>
                                        <?php echo e(showImage(@$cart->product->sku->variant_image?@$cart->product->sku->variant_image:@$cart->product->product->product->thumbnail_image_source)); ?>

                                        <?php endif; ?>
                                    " alt="<?php echo e(@$cart->product->product->product_name); ?>" title="<?php echo e(@$cart->product->product->product_name); ?>">
                                </div>
                                <div class="product_list_content">
                                    <h4><a href="<?php echo e(singleProductURL($cart->product->product->seller->slug, $cart->product->product->slug)); ?>"><?php echo e(\Illuminate\Support\Str::limit(@$cart->product->product->product_name, 28, $end='...')); ?></a></h4>
                                    <?php if($cart->product->product->product->product_type == 2): ?>
                                        <?php
                                            $countCombinatiion = count(@$cart->product->product_variations);
                                        ?>
                                        <p>
                                        <?php $__currentLoopData = $cart->product->product_variations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $combination): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
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
                                    <h5 class="d-flex align-items-center"><span
                                            class="product_count_text"><?php echo e($cart->qty); ?><span>x</span></span><?php echo e(single_price($cart->price)); ?></h5>
                                </div>
                            </div>
                        </div>
                        <?php
                            if (isModuleActive('WholeSale')){
                                $w_main_price = 0;
                                $wholeSalePrices = $cart->product->wholeSalePrices;
                                foreach ($wholeSalePrices as $w_p){
                                    if ( ($w_p->min_qty<=$cart->qty) && ($w_p->max_qty >=$cart->qty) ){
                                        $w_main_price = $w_p->selling_price;
                                    }
                                    elseif($w_p->max_qty < $cart->qty){
                                        $w_main_price = $w_p->selling_price;
                                    }
                                }

                                if ($w_main_price!=0){
                                    $subtotal += $w_main_price * $cart->qty;
                                }else{
                                    $subtotal += $cart->total_price;
                                }
                            }else{
                                $subtotal += $cart->total_price;
                            }
                            $additional_shipping += $cart->product->sku->additional_shipping;
                        ?>

                        <?php if(file_exists(base_path().'/Modules/GST/') && $cart->product->product->product->is_physical == 1): ?>

                            <?php if($address && app('gst_config')['enable_gst'] == "gst"): ?>
                                <?php if(\app\Traits\PickupLocation::pickupPointAddress(1)->state_id == $address->state): ?>

                                    <?php if($cart->product->product->product->gstGroup): ?>
                                        <?php
                                            $sameStateTaxesGroup = json_decode($cart->product->product->product->gstGroup->same_state_gst);
                                            $sameStateTaxesGroup = (array) $sameStateTaxesGroup;
                                        ?>
                                        <?php $__currentLoopData = $sameStateTaxesGroup; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $sameStateTax): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php
                                                $gstAmount = ($cart->total_price * $sameStateTax) / 100;
                                                $tax += $gstAmount;
                                            ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php else: ?>

                                        <?php $__currentLoopData = $sameStateTaxes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $sameStateTax): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php
                                                $gstAmount = ($cart->total_price * $sameStateTax->tax_percentage) / 100;
                                                $tax += $gstAmount;
                                            ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                <?php else: ?>

                                    <?php if($cart->product->product->product->gstGroup): ?>
                                        <?php
                                            $diffStateTaxesGroup = json_decode($cart->product->product->product->gstGroup->outsite_state_gst);
                                            $diffStateTaxesGroup = (array) $diffStateTaxesGroup;
                                        ?>
                                        <?php $__currentLoopData = $diffStateTaxesGroup; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $diffStateTax): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php
                                                $gstAmount = ($cart->total_price * $diffStateTax) / 100;
                                                $tax += $gstAmount;
                                            ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php else: ?>

                                        <?php $__currentLoopData = $diffStateTaxes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $diffStateTax): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php
                                                $gstAmount = ($cart->total_price * $diffStateTax->tax_percentage) / 100;
                                                $tax += $gstAmount;
                                            ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                <?php endif; ?>

                            <?php elseif(app('gst_config')['enable_gst'] == "flat_tax"): ?>

                                <?php if($cart->product->product->product->gstGroup): ?>
                                    <?php
                                        $flatTaxGroup = json_decode($cart->product->product->product->gstGroup->same_state_gst);
                                        $flatTaxGroup = (array) $flatTaxGroup;
                                    ?>
                                    <?php $__currentLoopData = $flatTaxGroup; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sameStateTax): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php
                                            $gstAmount = $cart->total_price * $sameStateTax / 100;
                                            $tax += $gstAmount;
                                        ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php else: ?>
                                    <?php
                                        $gstAmount = $cart->total_price * $flatTax->tax_percentage / 100;
                                        $tax += $gstAmount;
                                    ?>
                                <?php endif; ?>

                            <?php endif; ?>

                        <?php else: ?>
                            <?php if($cart->product->product->product->gstGroup): ?>
                                <?php
                                    $sameStateTaxesGroup = json_decode($cart->product->product->product->gstGroup->same_state_gst);
                                    $sameStateTaxesGroup = (array) $sameStateTaxesGroup;
                                ?>
                                <?php $__currentLoopData = $sameStateTaxesGroup; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $sameStateTax): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                        $gstAmount = ($cart->total_price * $sameStateTax) / 100;
                                        $tax += $gstAmount;
                                    ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php else: ?>
                                <?php $__currentLoopData = $sameStateTaxes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $sameStateTax): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                        $gstAmount = ($cart->total_price * $sameStateTax->tax_percentage) / 100;
                                        $tax += $gstAmount;
                                    ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>

                        <?php endif; ?>

                    <?php else: ?>
                        <div class="singleVendor_product_lists">
                            <div class="singleVendor_product_list d-flex align-items-center">
                                <div class="thumb single_thumb">
                                    <img src="<?php echo e(showImage(@$cart->giftCard->thumbnail_image)); ?>" alt="<?php echo e(textLimit(@$cart->giftCard->name, 28)); ?>" title="<?php echo e(textLimit(@$cart->giftCard->name, 28)); ?>">
                                </div>
                                <div class="product_list_content">
                                    <h4><a href="<?php echo e(route('frontend.gift-card.show',$cart->giftCard->sku)); ?>"><?php echo e(textLimit(@$cart->giftCard->name, 28)); ?></a></h4>
                                    <h5 class="d-flex align-items-center"><span class="product_count_text" ><?php echo e($cart->qty); ?><span>x</span></span><?php echo e(single_price($cart->price)); ?></h5>
                                </div>
                            </div>
                        </div>
                        <?php
                            $subtotal += $cart->total_price;
                        ?>
                    <?php endif; ?>
                    <?php
                        $actual_total += $cart->total_price;
                    ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                <?php
                    $discount = $subtotal - $actual_total;
                    $total = $subtotal + $tax + $shipping_cost - $discount;
                ?>
            <?php endif; ?>
            <h3 class="check_v3_title mb_25"><?php echo e(__('common.order_summary')); ?></h3>
            <?php if(isModuleActive('MultiVendor')): ?>
                <?php
                    $total = $total_amount;
                ?>
            <?php endif; ?>
            <div class="subtotal_lists">
                <div class="single_total_list d-flex align-items-center">
                    <div class="single_total_left flex-fill">
                        <h4><?php echo e(__('common.subtotal')); ?></h4>
                    </div>
                    <div class="single_total_right">
                        
                        <span>+ <?php echo e(single_price($subtotal_without_discount)); ?></span>
                    </div>
                </div>
                <div class="single_total_list d-flex align-items-center flex-wrap">
                    <div class="single_total_left flex-fill">
                        <h4><?php echo e(__('common.shipping_charge')); ?></h4>
                        <?php if(isModuleActive('MultiVendor')): ?>
                            <?php if(isModuleActive('INTShipping')): ?>
                                <p><?php echo e(__('defaultTheme.product_wise_shipping_charge')); ?></p>
                            <?php else: ?>
                                <p><?php echo e(__('defaultTheme.package_wise_shipping_charge')); ?></p>
                            <?php endif; ?>
                        <?php endif; ?>
                    </div>
                    <div class="single_total_right">
                        <span>+ <?php echo e(single_price(collect($shipping_cost)->sum())); ?></span>
                    </div>
                </div>
                <div class="single_total_list d-flex align-items-center flex-wrap">
                    <div class="single_total_left flex-fill">
                        <h4><?php echo e(__('common.discount')); ?></h4>
                    </div>
                    <div class="single_total_right">
                        <span>- <?php echo e(single_price($discount)); ?></span>
                    </div>
                </div>
                <div class="single_total_list d-flex align-items-center flex-wrap">
                    <div class="single_total_left flex-fill">
                        <h4><?php echo e(__('common.vat/tax/gst')); ?></h4>
                    </div>
                    <div class="single_total_right">
                        <span>+ <?php echo e(single_price($tax_total)); ?></span>
                    </div>
                </div>
                <?php
                    $coupon = 0;
                    $coupon_id = null;
                    $total_for_coupon = $actual_total;
                ?>
                <?php if(auth()->guard()->check()): ?>
                    <?php
                        if(\Session::has('coupon_type')&&\Session::has('coupon_discount')){
                            $coupon_type = \Session::get('coupon_type');
                            $coupon_discount = \Session::get('coupon_discount');
                            $coupon_discount_type = \Session::get('coupon_discount_type');
                            $coupon_id = \Session::get('coupon_id');

                            if($coupon_type == 1){
                                $couponProducts = \Session::get('coupon_products');
                                if($coupon_discount_type == 0){
                                    foreach($couponProducts as  $key => $item){
                                        $cart = \App\Models\Cart::where('user_id',auth()->user()->id)->where('is_select',1)->where('product_type', 'product')->whereHas('product',function($query) use($item){
                                            $query->whereHas('product', function($q) use($item){
                                                $q->where('id', $item);
                                            });
                                        })->first();
                                        $coupon += ($cart->total_price/100)* $coupon_discount;
                                    }
                                }else{
                                    if($total_for_coupon > $coupon_discount){
                                        $coupon = $coupon_discount;
                                    }else {
                                        $coupon = $total_for_coupon;
                                    }
                                }

                            }
                            elseif($coupon_type == 2){

                                if($coupon_discount_type == 0){

                                    $maximum_discount = \Session::get('maximum_discount');
                                    $coupon = ($total_for_coupon/100)* $coupon_discount;

                                    if($coupon > $maximum_discount && $maximum_discount > 0){
                                        $coupon = $maximum_discount;
                                    }
                                }else{
                                    $coupon = $coupon_discount;
                                }
                            }
                            elseif($coupon_type == 3){
                                $maximum_discount = \Session::get('maximum_discount');
                                $coupon = $shipping_cost;

                                if($coupon > $maximum_discount && $maximum_discount > 0){
                                    $coupon = $maximum_discount;
                                }

                            }

                        }
                    ?>
                    <?php if(\Session::has('coupon_type')&&\Session::has('coupon_discount')): ?>
                        <div class="single_total_list d-flex align-items-center flex-wrap">
                            <div class="single_total_left flex-fill">
                                <h4><?php echo e(__('common.coupon')); ?> <?php echo e(__('common.discount')); ?></h4>
                            </div>
                            <div class="single_total_right">
                                <span>- <?php echo e(single_price($coupon)); ?></span>
                            </div>
                        </div>
                        <div class="coupon_verify_information mb_20 d-flex align-items-center flex-wrap ">
                            <div class="icon">
                                <img src="<?php echo e(url('/')); ?>/public/frontend/amazy/img/cart/verified.svg" alt="<?php echo e(__('common.valid_coupon_code')); ?>" title="<?php echo e(__('common.valid_coupon_code')); ?>">
                            </div>
                            <div class="coupon_content">
                                <h4 class="font_14 f_w_700 lh-1"><?php echo e(__('common.valid_coupon_code')); ?></h4>
                                <a class="remove_coupon text-uppercase text-decoration-underline cursor_pointer" id="coupon_delete"><?php echo e(__('common.remove_code')); ?></a>
                            </div>
                        </div>
                    <?php else: ?>
                        <div class="coupon_wrapper pb_25 couponCodeDiv">
                            <input placeholder="<?php echo e(__('common.coupon')); ?> <?php echo e(__('common.code')); ?>" id="coupon_code" class="primary_input5 " onfocus="this.placeholder = ''" onblur="this.placeholder = '<?php echo e(__('common.coupon')); ?> <?php echo e(__('common.code')); ?>'" type="text">
                            <button type="button" class="amaz_primary_btn style4 min_100 text-uppercase text-center coupon_apply_btn" data-total="<?php echo e($actual_total); ?>"><?php echo e(__('common.apply')); ?></button>
                        </div>
                    <?php endif; ?>
                    <?php if(isset($coupon_amount)): ?>
                        <?php
                            $total = $total - $coupon_amount;
                        ?>
                    <?php endif; ?>
                <?php endif; ?>
                <div class="total_amount d-flex align-items-center flex-wrap">
                    <div class="single_total_left flex-fill">
                        <span class="total_text"><?php echo e(__('common.total')); ?> (Incl. <?php echo e(__('common.vat/tax/gst')); ?>)</span>
                    </div>
                    <div class="single_total_right">
                        <span class="total_text"><?php echo e(single_price($total)); ?></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/partials/_payment_step_details.blade.php ENDPATH**/ ?>